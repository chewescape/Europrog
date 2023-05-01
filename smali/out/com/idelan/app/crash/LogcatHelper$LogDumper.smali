.class Lcom/idelan/app/crash/LogcatHelper$LogDumper;
.super Ljava/lang/Thread;
.source "LogcatHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/idelan/app/crash/LogcatHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "LogDumper"
.end annotation


# instance fields
.field private cmds:Ljava/lang/String;

.field private logcatProc:Ljava/lang/Process;

.field private mPID:Ljava/lang/String;

.field private mReader:Ljava/io/BufferedReader;

.field private mRunning:Z

.field private out:Ljava/io/FileOutputStream;

.field final synthetic this$0:Lcom/idelan/app/crash/LogcatHelper;


# direct methods
.method public constructor <init>(Lcom/idelan/app/crash/LogcatHelper;Ljava/lang/String;)V
    .registers 6
    .param p2, "pid"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x0

    .line 62
    iput-object p1, p0, Lcom/idelan/app/crash/LogcatHelper$LogDumper;->this$0:Lcom/idelan/app/crash/LogcatHelper;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    .line 56
    iput-object v2, p0, Lcom/idelan/app/crash/LogcatHelper$LogDumper;->mReader:Ljava/io/BufferedReader;

    .line 57
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/idelan/app/crash/LogcatHelper$LogDumper;->mRunning:Z

    .line 58
    iput-object v2, p0, Lcom/idelan/app/crash/LogcatHelper$LogDumper;->cmds:Ljava/lang/String;

    .line 60
    iput-object v2, p0, Lcom/idelan/app/crash/LogcatHelper$LogDumper;->out:Ljava/io/FileOutputStream;

    .line 63
    iput-object p2, p0, Lcom/idelan/app/crash/LogcatHelper$LogDumper;->mPID:Ljava/lang/String;

    .line 65
    :try_start_11
    new-instance v1, Ljava/io/FileOutputStream;

    invoke-static {p1}, Lcom/idelan/app/crash/LogcatHelper;->access$0(Lcom/idelan/app/crash/LogcatHelper;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V

    iput-object v1, p0, Lcom/idelan/app/crash/LogcatHelper$LogDumper;->out:Ljava/io/FileOutputStream;
    :try_end_1c
    .catch Ljava/io/FileNotFoundException; {:try_start_11 .. :try_end_1c} :catch_36

    .line 82
    :goto_1c
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "logcat *:E | grep \"("

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/idelan/app/crash/LogcatHelper$LogDumper;->mPID:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")\""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/idelan/app/crash/LogcatHelper$LogDumper;->cmds:Ljava/lang/String;

    .line 84
    return-void

    .line 66
    :catch_36
    move-exception v0

    .line 68
    .local v0, "e":Ljava/io/FileNotFoundException;
    invoke-virtual {v0}, Ljava/io/FileNotFoundException;->printStackTrace()V

    goto :goto_1c
.end method


# virtual methods
.method public run()V
    .registers 7

    .prologue
    const/4 v5, 0x0

    .line 93
    :try_start_1
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v2

    const-string v3, "logcat -c"

    invoke-virtual {v2, v3}, Ljava/lang/Runtime;->exec(Ljava/lang/String;)Ljava/lang/Process;

    .line 94
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v2

    iget-object v3, p0, Lcom/idelan/app/crash/LogcatHelper$LogDumper;->cmds:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/Runtime;->exec(Ljava/lang/String;)Ljava/lang/Process;

    move-result-object v2

    iput-object v2, p0, Lcom/idelan/app/crash/LogcatHelper$LogDumper;->logcatProc:Ljava/lang/Process;

    .line 95
    new-instance v2, Ljava/io/BufferedReader;

    new-instance v3, Ljava/io/InputStreamReader;

    .line 96
    iget-object v4, p0, Lcom/idelan/app/crash/LogcatHelper$LogDumper;->logcatProc:Ljava/lang/Process;

    invoke-virtual {v4}, Ljava/lang/Process;->getInputStream()Ljava/io/InputStream;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    const/16 v4, 0x400

    invoke-direct {v2, v3, v4}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;I)V

    .line 95
    iput-object v2, p0, Lcom/idelan/app/crash/LogcatHelper$LogDumper;->mReader:Ljava/io/BufferedReader;

    .line 97
    const/4 v1, 0x0

    .line 98
    .local v1, "line":Ljava/lang/String;
    :cond_2b
    :goto_2b
    iget-boolean v2, p0, Lcom/idelan/app/crash/LogcatHelper$LogDumper;->mRunning:Z

    if-eqz v2, :cond_37

    iget-object v2, p0, Lcom/idelan/app/crash/LogcatHelper$LogDumper;->mReader:Ljava/io/BufferedReader;

    invoke-virtual {v2}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;
    :try_end_34
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_34} :catch_9d
    .catchall {:try_start_1 .. :try_end_34} :catchall_ce

    move-result-object v1

    if-nez v1, :cond_5a

    .line 113
    :cond_37
    iget-object v2, p0, Lcom/idelan/app/crash/LogcatHelper$LogDumper;->logcatProc:Ljava/lang/Process;

    if-eqz v2, :cond_42

    .line 114
    iget-object v2, p0, Lcom/idelan/app/crash/LogcatHelper$LogDumper;->logcatProc:Ljava/lang/Process;

    invoke-virtual {v2}, Ljava/lang/Process;->destroy()V

    .line 115
    iput-object v5, p0, Lcom/idelan/app/crash/LogcatHelper$LogDumper;->logcatProc:Ljava/lang/Process;

    .line 117
    :cond_42
    iget-object v2, p0, Lcom/idelan/app/crash/LogcatHelper$LogDumper;->mReader:Ljava/io/BufferedReader;

    if-eqz v2, :cond_4e

    .line 119
    :try_start_46
    iget-object v2, p0, Lcom/idelan/app/crash/LogcatHelper$LogDumper;->mReader:Ljava/io/BufferedReader;

    invoke-virtual {v2}, Ljava/io/BufferedReader;->close()V

    .line 120
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/idelan/app/crash/LogcatHelper$LogDumper;->mReader:Ljava/io/BufferedReader;
    :try_end_4e
    .catch Ljava/io/IOException; {:try_start_46 .. :try_end_4e} :catch_fc

    .line 125
    :cond_4e
    :goto_4e
    iget-object v2, p0, Lcom/idelan/app/crash/LogcatHelper$LogDumper;->out:Ljava/io/FileOutputStream;

    if-eqz v2, :cond_59

    .line 127
    :try_start_52
    iget-object v2, p0, Lcom/idelan/app/crash/LogcatHelper$LogDumper;->out:Ljava/io/FileOutputStream;

    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V
    :try_end_57
    .catch Ljava/io/IOException; {:try_start_52 .. :try_end_57} :catch_102

    .line 131
    :goto_57
    iput-object v5, p0, Lcom/idelan/app/crash/LogcatHelper$LogDumper;->out:Ljava/io/FileOutputStream;

    .line 136
    .end local v1    # "line":Ljava/lang/String;
    :cond_59
    :goto_59
    return-void

    .line 99
    .restart local v1    # "line":Ljava/lang/String;
    :cond_5a
    :try_start_5a
    iget-boolean v2, p0, Lcom/idelan/app/crash/LogcatHelper$LogDumper;->mRunning:Z

    if-eqz v2, :cond_37

    .line 102
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    if-eqz v2, :cond_2b

    .line 105
    iget-object v2, p0, Lcom/idelan/app/crash/LogcatHelper$LogDumper;->out:Ljava/io/FileOutputStream;

    if-eqz v2, :cond_2b

    iget-object v2, p0, Lcom/idelan/app/crash/LogcatHelper$LogDumper;->mPID:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_2b

    .line 106
    iget-object v2, p0, Lcom/idelan/app/crash/LogcatHelper$LogDumper;->out:Ljava/io/FileOutputStream;

    new-instance v3, Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/idelan/app/crash/LogcatHelper$LogDumper;->this$0:Lcom/idelan/app/crash/LogcatHelper;

    invoke-virtual {v4}, Lcom/idelan/app/crash/LogcatHelper;->paserTime()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v4, "  "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\n"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->getBytes()[B

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/io/FileOutputStream;->write([B)V
    :try_end_9c
    .catch Ljava/io/IOException; {:try_start_5a .. :try_end_9c} :catch_9d
    .catchall {:try_start_5a .. :try_end_9c} :catchall_ce

    goto :goto_2b

    .line 110
    .end local v1    # "line":Ljava/lang/String;
    :catch_9d
    move-exception v0

    .line 111
    .local v0, "e":Ljava/io/IOException;
    :try_start_9e
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V
    :try_end_a1
    .catchall {:try_start_9e .. :try_end_a1} :catchall_ce

    .line 113
    iget-object v2, p0, Lcom/idelan/app/crash/LogcatHelper$LogDumper;->logcatProc:Ljava/lang/Process;

    if-eqz v2, :cond_ac

    .line 114
    iget-object v2, p0, Lcom/idelan/app/crash/LogcatHelper$LogDumper;->logcatProc:Ljava/lang/Process;

    invoke-virtual {v2}, Ljava/lang/Process;->destroy()V

    .line 115
    iput-object v5, p0, Lcom/idelan/app/crash/LogcatHelper$LogDumper;->logcatProc:Ljava/lang/Process;

    .line 117
    :cond_ac
    iget-object v2, p0, Lcom/idelan/app/crash/LogcatHelper$LogDumper;->mReader:Ljava/io/BufferedReader;

    if-eqz v2, :cond_b8

    .line 119
    :try_start_b0
    iget-object v2, p0, Lcom/idelan/app/crash/LogcatHelper$LogDumper;->mReader:Ljava/io/BufferedReader;

    invoke-virtual {v2}, Ljava/io/BufferedReader;->close()V

    .line 120
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/idelan/app/crash/LogcatHelper$LogDumper;->mReader:Ljava/io/BufferedReader;
    :try_end_b8
    .catch Ljava/io/IOException; {:try_start_b0 .. :try_end_b8} :catch_c4

    .line 125
    :cond_b8
    :goto_b8
    iget-object v2, p0, Lcom/idelan/app/crash/LogcatHelper$LogDumper;->out:Ljava/io/FileOutputStream;

    if-eqz v2, :cond_59

    .line 127
    :try_start_bc
    iget-object v2, p0, Lcom/idelan/app/crash/LogcatHelper$LogDumper;->out:Ljava/io/FileOutputStream;

    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V
    :try_end_c1
    .catch Ljava/io/IOException; {:try_start_bc .. :try_end_c1} :catch_c9

    .line 131
    :goto_c1
    iput-object v5, p0, Lcom/idelan/app/crash/LogcatHelper$LogDumper;->out:Ljava/io/FileOutputStream;

    goto :goto_59

    .line 121
    :catch_c4
    move-exception v0

    .line 122
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_b8

    .line 128
    :catch_c9
    move-exception v0

    .line 129
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_c1

    .line 112
    .end local v0    # "e":Ljava/io/IOException;
    :catchall_ce
    move-exception v2

    .line 113
    iget-object v3, p0, Lcom/idelan/app/crash/LogcatHelper$LogDumper;->logcatProc:Ljava/lang/Process;

    if-eqz v3, :cond_da

    .line 114
    iget-object v3, p0, Lcom/idelan/app/crash/LogcatHelper$LogDumper;->logcatProc:Ljava/lang/Process;

    invoke-virtual {v3}, Ljava/lang/Process;->destroy()V

    .line 115
    iput-object v5, p0, Lcom/idelan/app/crash/LogcatHelper$LogDumper;->logcatProc:Ljava/lang/Process;

    .line 117
    :cond_da
    iget-object v3, p0, Lcom/idelan/app/crash/LogcatHelper$LogDumper;->mReader:Ljava/io/BufferedReader;

    if-eqz v3, :cond_e6

    .line 119
    :try_start_de
    iget-object v3, p0, Lcom/idelan/app/crash/LogcatHelper$LogDumper;->mReader:Ljava/io/BufferedReader;

    invoke-virtual {v3}, Ljava/io/BufferedReader;->close()V

    .line 120
    const/4 v3, 0x0

    iput-object v3, p0, Lcom/idelan/app/crash/LogcatHelper$LogDumper;->mReader:Ljava/io/BufferedReader;
    :try_end_e6
    .catch Ljava/io/IOException; {:try_start_de .. :try_end_e6} :catch_f2

    .line 125
    :cond_e6
    :goto_e6
    iget-object v3, p0, Lcom/idelan/app/crash/LogcatHelper$LogDumper;->out:Ljava/io/FileOutputStream;

    if-eqz v3, :cond_f1

    .line 127
    :try_start_ea
    iget-object v3, p0, Lcom/idelan/app/crash/LogcatHelper$LogDumper;->out:Ljava/io/FileOutputStream;

    invoke-virtual {v3}, Ljava/io/FileOutputStream;->close()V
    :try_end_ef
    .catch Ljava/io/IOException; {:try_start_ea .. :try_end_ef} :catch_f7

    .line 131
    :goto_ef
    iput-object v5, p0, Lcom/idelan/app/crash/LogcatHelper$LogDumper;->out:Ljava/io/FileOutputStream;

    .line 134
    :cond_f1
    throw v2

    .line 121
    :catch_f2
    move-exception v0

    .line 122
    .restart local v0    # "e":Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_e6

    .line 128
    .end local v0    # "e":Ljava/io/IOException;
    :catch_f7
    move-exception v0

    .line 129
    .restart local v0    # "e":Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_ef

    .line 121
    .end local v0    # "e":Ljava/io/IOException;
    .restart local v1    # "line":Ljava/lang/String;
    :catch_fc
    move-exception v0

    .line 122
    .restart local v0    # "e":Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto/16 :goto_4e

    .line 128
    .end local v0    # "e":Ljava/io/IOException;
    :catch_102
    move-exception v0

    .line 129
    .restart local v0    # "e":Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto/16 :goto_57
.end method

.method public stopLogs()V
    .registers 2

    .prologue
    .line 87
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/idelan/app/crash/LogcatHelper$LogDumper;->mRunning:Z

    .line 88
    return-void
.end method

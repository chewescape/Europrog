.class public abstract Lcom/idelan/task/Task;
.super Ljava/lang/Object;
.source "Task.java"

# interfaces
.implements Ljava/lang/Runnable;
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Runnable;",
        "Ljava/lang/Comparable",
        "<",
        "Lcom/idelan/task/Task;",
        ">;"
    }
.end annotation


# static fields
.field public static final INVAILD_ID:I = -0x1

.field private static TAG:Ljava/lang/String;

.field public static TASK_PRIORITY_HEIGHT:B

.field public static TASK_PRIORITY_LOW:B

.field public static TASK_PRIORITY_NORMAL:B

.field public static TASK_STATUS_DOWN:B

.field public static TASK_STATUS_IDLE:B

.field public static TASK_STATUS_RUNNING:B


# instance fields
.field public id:Ljava/lang/Integer;

.field private priority:I

.field private seqNumb:I

.field private state:B

.field private taskStateListener:Lcom/idelan/task/TaskStateListener;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 9
    const-string v0, "Task"

    sput-object v0, Lcom/idelan/task/Task;->TAG:Ljava/lang/String;

    .line 12
    const/4 v0, 0x0

    sput-byte v0, Lcom/idelan/task/Task;->TASK_STATUS_IDLE:B

    .line 13
    const/4 v0, 0x1

    sput-byte v0, Lcom/idelan/task/Task;->TASK_STATUS_RUNNING:B

    .line 14
    const/4 v0, 0x3

    sput-byte v0, Lcom/idelan/task/Task;->TASK_STATUS_DOWN:B

    .line 16
    const/16 v0, 0xa

    sput-byte v0, Lcom/idelan/task/Task;->TASK_PRIORITY_NORMAL:B

    .line 17
    const/4 v0, 0x5

    sput-byte v0, Lcom/idelan/task/Task;->TASK_PRIORITY_LOW:B

    .line 18
    const/16 v0, 0x14

    sput-byte v0, Lcom/idelan/task/Task;->TASK_PRIORITY_HEIGHT:B

    return-void
.end method

.method public constructor <init>(I)V
    .registers 3
    .param p1, "priority"    # I

    .prologue
    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    const/4 v0, -0x1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/idelan/task/Task;->id:Ljava/lang/Integer;

    .line 29
    iput p1, p0, Lcom/idelan/task/Task;->priority:I

    .line 30
    return-void
.end method

.method public constructor <init>(ILcom/idelan/task/TaskStateListener;)V
    .registers 4
    .param p1, "priority"    # I
    .param p2, "taskStateListener"    # Lcom/idelan/task/TaskStateListener;

    .prologue
    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    const/4 v0, -0x1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/idelan/task/Task;->id:Ljava/lang/Integer;

    .line 34
    iput-object p2, p0, Lcom/idelan/task/Task;->taskStateListener:Lcom/idelan/task/TaskStateListener;

    .line 35
    iput p1, p0, Lcom/idelan/task/Task;->priority:I

    .line 36
    return-void
.end method

.method public constructor <init>(Ljava/lang/Integer;Lcom/idelan/task/TaskStateListener;I)V
    .registers 4
    .param p1, "id"    # Ljava/lang/Integer;
    .param p2, "taskStateListener"    # Lcom/idelan/task/TaskStateListener;
    .param p3, "priority"    # I

    .prologue
    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    iput-object p1, p0, Lcom/idelan/task/Task;->id:Ljava/lang/Integer;

    .line 40
    iput-object p2, p0, Lcom/idelan/task/Task;->taskStateListener:Lcom/idelan/task/TaskStateListener;

    .line 41
    iput p3, p0, Lcom/idelan/task/Task;->priority:I

    .line 42
    return-void
.end method


# virtual methods
.method public compareTo(Lcom/idelan/task/Task;)I
    .registers 3
    .param p1, "o"    # Lcom/idelan/task/Task;

    .prologue
    .line 77
    invoke-static {p0, p1}, Lcom/idelan/task/TaskPriorityCcmparator;->compareTo(Lcom/idelan/task/Task;Lcom/idelan/task/Task;)I

    move-result v0

    return v0
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .registers 3

    .prologue
    .line 1
    check-cast p1, Lcom/idelan/task/Task;

    invoke-virtual {p0, p1}, Lcom/idelan/task/Task;->compareTo(Lcom/idelan/task/Task;)I

    move-result v0

    return v0
.end method

.method protected abstract doTask()V
.end method

.method public getPriority()I
    .registers 2

    .prologue
    .line 81
    iget v0, p0, Lcom/idelan/task/Task;->priority:I

    return v0
.end method

.method getSeqNum()I
    .registers 2

    .prologue
    .line 72
    iget v0, p0, Lcom/idelan/task/Task;->seqNumb:I

    return v0
.end method

.method public isStart()Z
    .registers 3

    .prologue
    .line 114
    iget-byte v0, p0, Lcom/idelan/task/Task;->state:B

    sget-byte v1, Lcom/idelan/task/Task;->TASK_STATUS_IDLE:B

    if-eq v0, v1, :cond_8

    const/4 v0, 0x1

    :goto_7
    return v0

    :cond_8
    const/4 v0, 0x0

    goto :goto_7
.end method

.method notifyFinished()V
    .registers 2

    .prologue
    .line 93
    iget-object v0, p0, Lcom/idelan/task/Task;->taskStateListener:Lcom/idelan/task/TaskStateListener;

    if-eqz v0, :cond_9

    .line 94
    iget-object v0, p0, Lcom/idelan/task/Task;->taskStateListener:Lcom/idelan/task/TaskStateListener;

    invoke-interface {v0}, Lcom/idelan/task/TaskStateListener;->onFinished()V

    .line 96
    :cond_9
    return-void
.end method

.method public final run()V
    .registers 5

    .prologue
    .line 120
    :try_start_0
    invoke-virtual {p0}, Lcom/idelan/task/Task;->doTask()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_3} :catch_4

    .line 126
    :goto_3
    return-void

    .line 121
    :catch_4
    move-exception v0

    .line 123
    .local v0, "e":Ljava/lang/Exception;
    sget-object v1, Lcom/idelan/task/Task;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "run error the class is "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 124
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_3
.end method

.method public setPriority(I)V
    .registers 2
    .param p1, "newPriority"    # I

    .prologue
    .line 85
    iput p1, p0, Lcom/idelan/task/Task;->priority:I

    .line 86
    return-void
.end method

.method setSeqNum(I)V
    .registers 5
    .param p1, "seq"    # I

    .prologue
    .line 61
    sget-object v0, Lcom/idelan/task/Task;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "id = "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/idelan/task/Task;->id:Ljava/lang/Integer;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " seq = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 62
    iput p1, p0, Lcom/idelan/task/Task;->seqNumb:I

    .line 63
    return-void
.end method

.method setState(B)V
    .registers 2
    .param p1, "newState"    # B

    .prologue
    .line 105
    iput-byte p1, p0, Lcom/idelan/task/Task;->state:B

    .line 106
    return-void
.end method

.method public setTaskListener(Lcom/idelan/task/TaskStateListener;)V
    .registers 2
    .param p1, "taskStateListener"    # Lcom/idelan/task/TaskStateListener;

    .prologue
    .line 50
    iput-object p1, p0, Lcom/idelan/task/Task;->taskStateListener:Lcom/idelan/task/TaskStateListener;

    .line 52
    return-void
.end method

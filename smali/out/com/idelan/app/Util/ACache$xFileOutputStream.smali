.class Lcom/idelan/app/Util/ACache$xFileOutputStream;
.super Ljava/io/FileOutputStream;
.source "ACache.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/idelan/app/Util/ACache;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "xFileOutputStream"
.end annotation


# instance fields
.field file:Ljava/io/File;

.field final synthetic this$0:Lcom/idelan/app/Util/ACache;


# direct methods
.method public constructor <init>(Lcom/idelan/app/Util/ACache;Ljava/io/File;)V
    .registers 3
    .param p2, "file"    # Ljava/io/File;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;
        }
    .end annotation

    .prologue
    .line 121
    iput-object p1, p0, Lcom/idelan/app/Util/ACache$xFileOutputStream;->this$0:Lcom/idelan/app/Util/ACache;

    .line 122
    invoke-direct {p0, p2}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    .line 123
    iput-object p2, p0, Lcom/idelan/app/Util/ACache$xFileOutputStream;->file:Ljava/io/File;

    .line 124
    return-void
.end method


# virtual methods
.method public close()V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 127
    invoke-super {p0}, Ljava/io/FileOutputStream;->close()V

    .line 128
    iget-object v0, p0, Lcom/idelan/app/Util/ACache$xFileOutputStream;->this$0:Lcom/idelan/app/Util/ACache;

    invoke-static {v0}, Lcom/idelan/app/Util/ACache;->access$0(Lcom/idelan/app/Util/ACache;)Lcom/idelan/app/Util/ACache$ACacheManager;

    move-result-object v0

    iget-object v1, p0, Lcom/idelan/app/Util/ACache$xFileOutputStream;->file:Ljava/io/File;

    invoke-static {v0, v1}, Lcom/idelan/app/Util/ACache$ACacheManager;->access$0(Lcom/idelan/app/Util/ACache$ACacheManager;Ljava/io/File;)V

    .line 129
    return-void
.end method

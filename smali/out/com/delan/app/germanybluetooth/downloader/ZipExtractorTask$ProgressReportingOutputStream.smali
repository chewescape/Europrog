.class final Lcom/delan/app/germanybluetooth/downloader/ZipExtractorTask$ProgressReportingOutputStream;
.super Ljava/io/FileOutputStream;
.source "ZipExtractorTask.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/delan/app/germanybluetooth/downloader/ZipExtractorTask;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "ProgressReportingOutputStream"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/delan/app/germanybluetooth/downloader/ZipExtractorTask;


# direct methods
.method public constructor <init>(Lcom/delan/app/germanybluetooth/downloader/ZipExtractorTask;Ljava/io/File;)V
    .registers 3
    .param p2, "file"    # Ljava/io/File;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;
        }
    .end annotation

    .prologue
    .line 146
    iput-object p1, p0, Lcom/delan/app/germanybluetooth/downloader/ZipExtractorTask$ProgressReportingOutputStream;->this$0:Lcom/delan/app/germanybluetooth/downloader/ZipExtractorTask;

    .line 147
    invoke-direct {p0, p2}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    .line 148
    return-void
.end method


# virtual methods
.method public write([BII)V
    .registers 4
    .param p1, "buffer"    # [B
    .param p2, "byteOffset"    # I
    .param p3, "byteCount"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 153
    invoke-super {p0, p1, p2, p3}, Ljava/io/FileOutputStream;->write([BII)V

    .line 154
    return-void
.end method

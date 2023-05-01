.class public Lcom/idelan/app/Util/SDCardUtil;
.super Ljava/lang/Object;
.source "SDCardUtil.java"


# static fields
.field public static final MIME_MapTable:[[Ljava/lang/String;

.field private static file:Ljava/io/File;


# direct methods
.method static constructor <clinit>()V
    .registers 7

    .prologue
    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 23
    const/4 v0, 0x0

    sput-object v0, Lcom/idelan/app/Util/SDCardUtil;->file:Ljava/io/File;

    .line 588
    const/16 v0, 0x42

    new-array v0, v0, [[Ljava/lang/String;

    .line 590
    new-array v1, v6, [Ljava/lang/String;

    const-string v2, ".3gp"

    aput-object v2, v1, v4

    const-string v2, "video/3gpp"

    aput-object v2, v1, v5

    aput-object v1, v0, v4

    .line 591
    new-array v1, v6, [Ljava/lang/String;

    const-string v2, ".apk"

    aput-object v2, v1, v4

    const-string v2, "application/vnd.android.package-archive"

    aput-object v2, v1, v5

    aput-object v1, v0, v5

    .line 592
    new-array v1, v6, [Ljava/lang/String;

    const-string v2, ".asf"

    aput-object v2, v1, v4

    const-string v2, "video/x-ms-asf"

    aput-object v2, v1, v5

    aput-object v1, v0, v6

    const/4 v1, 0x3

    .line 593
    new-array v2, v6, [Ljava/lang/String;

    const-string v3, ".avi"

    aput-object v3, v2, v4

    const-string v3, "video/x-msvideo"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/4 v1, 0x4

    .line 594
    new-array v2, v6, [Ljava/lang/String;

    const-string v3, ".bin"

    aput-object v3, v2, v4

    const-string v3, "application/octet-stream"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/4 v1, 0x5

    .line 595
    new-array v2, v6, [Ljava/lang/String;

    const-string v3, ".bmp"

    aput-object v3, v2, v4

    const-string v3, "image/bmp"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/4 v1, 0x6

    .line 596
    new-array v2, v6, [Ljava/lang/String;

    const-string v3, ".c"

    aput-object v3, v2, v4

    const-string v3, "text/plain"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/4 v1, 0x7

    .line 597
    new-array v2, v6, [Ljava/lang/String;

    const-string v3, ".class"

    aput-object v3, v2, v4

    const-string v3, "application/octet-stream"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x8

    .line 598
    new-array v2, v6, [Ljava/lang/String;

    const-string v3, ".conf"

    aput-object v3, v2, v4

    const-string v3, "text/plain"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x9

    .line 599
    new-array v2, v6, [Ljava/lang/String;

    const-string v3, ".cpp"

    aput-object v3, v2, v4

    const-string v3, "text/plain"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0xa

    .line 600
    new-array v2, v6, [Ljava/lang/String;

    const-string v3, ".doc"

    aput-object v3, v2, v4

    const-string v3, "application/msword"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0xb

    .line 601
    new-array v2, v6, [Ljava/lang/String;

    const-string v3, ".docx"

    aput-object v3, v2, v4

    .line 602
    const-string v3, "application/vnd.openxmlformats-officedocument.wordprocessingml.document"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0xc

    .line 603
    new-array v2, v6, [Ljava/lang/String;

    const-string v3, ".xls"

    aput-object v3, v2, v4

    const-string v3, "application/vnd.ms-excel"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0xd

    .line 604
    new-array v2, v6, [Ljava/lang/String;

    const-string v3, ".xlsx"

    aput-object v3, v2, v4

    .line 605
    const-string v3, "application/vnd.openxmlformats-officedocument.spreadsheetml.sheet"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0xe

    .line 606
    new-array v2, v6, [Ljava/lang/String;

    const-string v3, ".exe"

    aput-object v3, v2, v4

    const-string v3, "application/octet-stream"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0xf

    .line 607
    new-array v2, v6, [Ljava/lang/String;

    const-string v3, ".gif"

    aput-object v3, v2, v4

    const-string v3, "image/gif"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x10

    .line 608
    new-array v2, v6, [Ljava/lang/String;

    const-string v3, ".gtar"

    aput-object v3, v2, v4

    const-string v3, "application/x-gtar"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x11

    .line 609
    new-array v2, v6, [Ljava/lang/String;

    const-string v3, ".gz"

    aput-object v3, v2, v4

    const-string v3, "application/x-gzip"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x12

    .line 610
    new-array v2, v6, [Ljava/lang/String;

    const-string v3, ".h"

    aput-object v3, v2, v4

    const-string v3, "text/plain"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x13

    .line 611
    new-array v2, v6, [Ljava/lang/String;

    const-string v3, ".htm"

    aput-object v3, v2, v4

    const-string v3, "text/html"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x14

    .line 612
    new-array v2, v6, [Ljava/lang/String;

    const-string v3, ".html"

    aput-object v3, v2, v4

    const-string v3, "text/html"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x15

    .line 613
    new-array v2, v6, [Ljava/lang/String;

    const-string v3, ".jar"

    aput-object v3, v2, v4

    const-string v3, "application/java-archive"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x16

    .line 614
    new-array v2, v6, [Ljava/lang/String;

    const-string v3, ".java"

    aput-object v3, v2, v4

    const-string v3, "text/plain"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x17

    .line 615
    new-array v2, v6, [Ljava/lang/String;

    const-string v3, ".jpeg"

    aput-object v3, v2, v4

    const-string v3, "image/jpeg"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x18

    .line 616
    new-array v2, v6, [Ljava/lang/String;

    const-string v3, ".jpg"

    aput-object v3, v2, v4

    const-string v3, "image/jpeg"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x19

    .line 617
    new-array v2, v6, [Ljava/lang/String;

    const-string v3, ".js"

    aput-object v3, v2, v4

    const-string v3, "application/x-javascript"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x1a

    .line 618
    new-array v2, v6, [Ljava/lang/String;

    const-string v3, ".log"

    aput-object v3, v2, v4

    const-string v3, "text/plain"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x1b

    .line 619
    new-array v2, v6, [Ljava/lang/String;

    const-string v3, ".m3u"

    aput-object v3, v2, v4

    const-string v3, "audio/x-mpegurl"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x1c

    .line 620
    new-array v2, v6, [Ljava/lang/String;

    const-string v3, ".m4a"

    aput-object v3, v2, v4

    const-string v3, "audio/mp4a-latm"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x1d

    .line 621
    new-array v2, v6, [Ljava/lang/String;

    const-string v3, ".m4b"

    aput-object v3, v2, v4

    const-string v3, "audio/mp4a-latm"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x1e

    .line 622
    new-array v2, v6, [Ljava/lang/String;

    const-string v3, ".m4p"

    aput-object v3, v2, v4

    const-string v3, "audio/mp4a-latm"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x1f

    .line 623
    new-array v2, v6, [Ljava/lang/String;

    const-string v3, ".m4u"

    aput-object v3, v2, v4

    const-string v3, "video/vnd.mpegurl"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x20

    .line 624
    new-array v2, v6, [Ljava/lang/String;

    const-string v3, ".m4v"

    aput-object v3, v2, v4

    const-string v3, "video/x-m4v"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x21

    .line 625
    new-array v2, v6, [Ljava/lang/String;

    const-string v3, ".mov"

    aput-object v3, v2, v4

    const-string v3, "video/quicktime"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x22

    .line 626
    new-array v2, v6, [Ljava/lang/String;

    const-string v3, ".mp2"

    aput-object v3, v2, v4

    const-string v3, "audio/x-mpeg"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x23

    .line 627
    new-array v2, v6, [Ljava/lang/String;

    const-string v3, ".mp3"

    aput-object v3, v2, v4

    const-string v3, "audio/x-mpeg"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x24

    .line 628
    new-array v2, v6, [Ljava/lang/String;

    const-string v3, ".mp4"

    aput-object v3, v2, v4

    const-string v3, "video/mp4"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x25

    .line 629
    new-array v2, v6, [Ljava/lang/String;

    const-string v3, ".mpc"

    aput-object v3, v2, v4

    const-string v3, "application/vnd.mpohun.certificate"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x26

    .line 630
    new-array v2, v6, [Ljava/lang/String;

    const-string v3, ".mpe"

    aput-object v3, v2, v4

    const-string v3, "video/mpeg"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x27

    .line 631
    new-array v2, v6, [Ljava/lang/String;

    const-string v3, ".mpeg"

    aput-object v3, v2, v4

    const-string v3, "video/mpeg"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x28

    .line 632
    new-array v2, v6, [Ljava/lang/String;

    const-string v3, ".mpg"

    aput-object v3, v2, v4

    const-string v3, "video/mpeg"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x29

    .line 633
    new-array v2, v6, [Ljava/lang/String;

    const-string v3, ".mpg4"

    aput-object v3, v2, v4

    const-string v3, "video/mp4"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x2a

    .line 634
    new-array v2, v6, [Ljava/lang/String;

    const-string v3, ".mpga"

    aput-object v3, v2, v4

    const-string v3, "audio/mpeg"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x2b

    .line 635
    new-array v2, v6, [Ljava/lang/String;

    const-string v3, ".msg"

    aput-object v3, v2, v4

    const-string v3, "application/vnd.ms-outlook"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x2c

    .line 636
    new-array v2, v6, [Ljava/lang/String;

    const-string v3, ".ogg"

    aput-object v3, v2, v4

    const-string v3, "audio/ogg"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x2d

    .line 637
    new-array v2, v6, [Ljava/lang/String;

    const-string v3, ".pdf"

    aput-object v3, v2, v4

    const-string v3, "application/pdf"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x2e

    .line 638
    new-array v2, v6, [Ljava/lang/String;

    const-string v3, ".png"

    aput-object v3, v2, v4

    const-string v3, "image/png"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x2f

    .line 639
    new-array v2, v6, [Ljava/lang/String;

    const-string v3, ".pps"

    aput-object v3, v2, v4

    const-string v3, "application/vnd.ms-powerpoint"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x30

    .line 640
    new-array v2, v6, [Ljava/lang/String;

    const-string v3, ".ppt"

    aput-object v3, v2, v4

    const-string v3, "application/vnd.ms-powerpoint"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x31

    .line 641
    new-array v2, v6, [Ljava/lang/String;

    const-string v3, ".pptx"

    aput-object v3, v2, v4

    .line 642
    const-string v3, "application/vnd.openxmlformats-officedocument.presentationml.presentation"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x32

    .line 643
    new-array v2, v6, [Ljava/lang/String;

    const-string v3, ".prop"

    aput-object v3, v2, v4

    const-string v3, "text/plain"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x33

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, ".rc"

    aput-object v3, v2, v4

    const-string v3, "text/plain"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x34

    .line 644
    new-array v2, v6, [Ljava/lang/String;

    const-string v3, ".rmvb"

    aput-object v3, v2, v4

    const-string v3, "audio/x-pn-realaudio"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x35

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, ".rtf"

    aput-object v3, v2, v4

    const-string v3, "application/rtf"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x36

    .line 645
    new-array v2, v6, [Ljava/lang/String;

    const-string v3, ".sh"

    aput-object v3, v2, v4

    const-string v3, "text/plain"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x37

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, ".tar"

    aput-object v3, v2, v4

    const-string v3, "application/x-tar"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x38

    .line 646
    new-array v2, v6, [Ljava/lang/String;

    const-string v3, ".tgz"

    aput-object v3, v2, v4

    const-string v3, "application/x-compressed"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x39

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, ".txt"

    aput-object v3, v2, v4

    const-string v3, "text/plain"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x3a

    .line 647
    new-array v2, v6, [Ljava/lang/String;

    const-string v3, ".wav"

    aput-object v3, v2, v4

    const-string v3, "audio/x-wav"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x3b

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, ".wma"

    aput-object v3, v2, v4

    const-string v3, "audio/x-ms-wma"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x3c

    .line 648
    new-array v2, v6, [Ljava/lang/String;

    const-string v3, ".wmv"

    aput-object v3, v2, v4

    const-string v3, "audio/x-ms-wmv"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x3d

    .line 649
    new-array v2, v6, [Ljava/lang/String;

    const-string v3, ".wps"

    aput-object v3, v2, v4

    const-string v3, "application/vnd.ms-works"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x3e

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, ".xml"

    aput-object v3, v2, v4

    const-string v3, "text/plain"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x3f

    .line 650
    new-array v2, v6, [Ljava/lang/String;

    const-string v3, ".z"

    aput-object v3, v2, v4

    const-string v3, "application/x-compress"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x40

    .line 651
    new-array v2, v6, [Ljava/lang/String;

    const-string v3, ".zip"

    aput-object v3, v2, v4

    const-string v3, "application/x-zip-compressed"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x41

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, ""

    aput-object v3, v2, v4

    const-string v3, "*/*"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    .line 588
    sput-object v0, Lcom/idelan/app/Util/SDCardUtil;->MIME_MapTable:[[Ljava/lang/String;

    .line 651
    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static deleteDir(Ljava/io/File;)V
    .registers 4
    .param p0, "file"    # Ljava/io/File;

    .prologue
    .line 80
    invoke-virtual {p0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v0

    .line 81
    .local v0, "files":[Ljava/io/File;
    array-length v2, v0

    if-nez v2, :cond_b

    .line 82
    invoke-virtual {p0}, Ljava/io/File;->delete()Z

    .line 92
    :goto_a
    return-void

    .line 84
    :cond_b
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_c
    array-length v2, v0

    if-lt v1, v2, :cond_13

    .line 90
    invoke-virtual {p0}, Ljava/io/File;->delete()Z

    goto :goto_a

    .line 85
    :cond_13
    aget-object v2, v0, v1

    invoke-virtual {v2}, Ljava/io/File;->isDirectory()Z

    move-result v2

    if-eqz v2, :cond_23

    .line 86
    aget-object v2, v0, v1

    invoke-static {v2}, Lcom/idelan/app/Util/SDCardUtil;->deleteDir(Ljava/io/File;)V

    .line 84
    :goto_20
    add-int/lit8 v1, v1, 0x1

    goto :goto_c

    .line 88
    :cond_23
    aget-object v2, v0, v1

    invoke-virtual {v2}, Ljava/io/File;->delete()Z

    goto :goto_20
.end method

.method public static getAudioFiles([Ljava/io/File;)Ljava/util/List;
    .registers 5
    .param p0, "files"    # [Ljava/io/File;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/io/File;",
            ")",
            "Ljava/util/List",
            "<",
            "Ljava/io/File;",
            ">;"
        }
    .end annotation

    .prologue
    .line 235
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 236
    .local v2, "list":Ljava/util/List;, "Ljava/util/List<Ljava/io/File;>;"
    if-eqz p0, :cond_b

    .line 237
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_8
    array-length v3, p0

    if-lt v1, v3, :cond_13

    .line 244
    .end local v1    # "i":I
    :cond_b
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v3

    if-nez v3, :cond_12

    .line 245
    const/4 v2, 0x0

    .line 246
    .end local v2    # "list":Ljava/util/List;, "Ljava/util/List<Ljava/io/File;>;"
    :cond_12
    return-object v2

    .line 238
    .restart local v1    # "i":I
    .restart local v2    # "list":Ljava/util/List;, "Ljava/util/List<Ljava/io/File;>;"
    :cond_13
    aget-object v3, p0, v1

    invoke-virtual {v3}, Ljava/io/File;->isFile()Z

    move-result v3

    if-eqz v3, :cond_3a

    .line 239
    aget-object v3, p0, v1

    invoke-virtual {v3}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    .line 240
    .local v0, "filepath":Ljava/lang/String;
    const-string v3, "mp3"

    invoke-virtual {v0, v3}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_35

    const-string v3, "mpeg-4"

    invoke-virtual {v0, v3}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_3a

    .line 241
    :cond_35
    aget-object v3, p0, v1

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 237
    .end local v0    # "filepath":Ljava/lang/String;
    :cond_3a
    add-int/lit8 v1, v1, 0x1

    goto :goto_8
.end method

.method public static getDirSize(Ljava/io/File;)Ljava/lang/String;
    .registers 3
    .param p0, "file"    # Ljava/io/File;

    .prologue
    .line 314
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v1

    array-length v1, v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, "\u4e2a\u6587\u4ef6"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getFile()Ljava/io/File;
    .registers 1

    .prologue
    .line 26
    sget-object v0, Lcom/idelan/app/Util/SDCardUtil;->file:Ljava/io/File;

    return-object v0
.end method

.method public static getFileFromSdcard(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    .registers 9
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "filePath"    # Ljava/lang/String;

    .prologue
    .line 501
    const-string v1, ""

    .line 502
    .local v1, "fileContent":Ljava/lang/String;
    invoke-static {}, Lcom/idelan/app/Util/SDCardUtil;->isSdCardExist()Z

    move-result v5

    if-nez v5, :cond_b

    .line 503
    const-string v5, ""

    .line 518
    :goto_a
    return-object v5

    .line 504
    :cond_b
    invoke-static {p1}, Lcom/idelan/app/Util/SDCardUtil;->isFileExist(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_14

    .line 505
    const-string v5, ""

    goto :goto_a

    .line 507
    :cond_14
    :try_start_14
    new-instance v3, Ljava/io/InputStreamReader;

    new-instance v5, Ljava/io/FileInputStream;

    .line 508
    sget-object v6, Lcom/idelan/app/Util/SDCardUtil;->file:Ljava/io/File;

    invoke-direct {v5, v6}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    const-string v6, "UTF-8"

    invoke-static {v6}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v6

    .line 507
    invoke-direct {v3, v5, v6}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/nio/charset/Charset;)V

    .line 509
    .local v3, "read":Ljava/io/InputStreamReader;
    new-instance v4, Ljava/io/BufferedReader;

    invoke-direct {v4, v3}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 511
    .local v4, "reader":Ljava/io/BufferedReader;
    :goto_2b
    invoke-virtual {v4}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v2

    .local v2, "line":Ljava/lang/String;
    if-nez v2, :cond_36

    .line 514
    invoke-virtual {v3}, Ljava/io/InputStreamReader;->close()V

    .end local v2    # "line":Ljava/lang/String;
    .end local v3    # "read":Ljava/io/InputStreamReader;
    .end local v4    # "reader":Ljava/io/BufferedReader;
    :goto_34
    move-object v5, v1

    .line 518
    goto :goto_a

    .line 512
    .restart local v2    # "line":Ljava/lang/String;
    .restart local v3    # "read":Ljava/io/InputStreamReader;
    .restart local v4    # "reader":Ljava/io/BufferedReader;
    :cond_36
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_46
    .catch Ljava/lang/Exception; {:try_start_14 .. :try_end_46} :catch_48

    move-result-object v1

    goto :goto_2b

    .line 515
    .end local v2    # "line":Ljava/lang/String;
    .end local v3    # "read":Ljava/io/InputStreamReader;
    .end local v4    # "reader":Ljava/io/BufferedReader;
    :catch_48
    move-exception v0

    .line 516
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_34
.end method

.method public static getFileFromSdcard(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 11
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "dir"    # Ljava/lang/String;
    .param p2, "fileName"    # Ljava/lang/String;

    .prologue
    .line 357
    const/4 v4, 0x0

    .line 358
    .local v4, "len":I
    const/16 v6, 0x400

    new-array v0, v6, [B

    .line 359
    .local v0, "data":[B
    const/4 v2, 0x0

    .line 361
    .local v2, "inputStream":Ljava/io/FileInputStream;
    new-instance v5, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v5}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 362
    .local v5, "outputStream":Ljava/io/ByteArrayOutputStream;
    invoke-static {}, Lcom/idelan/app/Util/SDCardUtil;->isSdCardExist()Z

    move-result v6

    if-nez v6, :cond_14

    .line 363
    const-string v6, ""

    .line 384
    :goto_13
    return-object v6

    .line 364
    :cond_14
    invoke-static {p1, p2}, Lcom/idelan/app/Util/SDCardUtil;->isFileExist(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_1d

    .line 365
    const-string v6, ""

    goto :goto_13

    .line 367
    :cond_1d
    :try_start_1d
    new-instance v3, Ljava/io/FileInputStream;

    sget-object v6, Lcom/idelan/app/Util/SDCardUtil;->file:Ljava/io/File;

    invoke-direct {v3, v6}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_24
    .catch Ljava/io/FileNotFoundException; {:try_start_1d .. :try_end_24} :catch_77
    .catch Ljava/io/IOException; {:try_start_1d .. :try_end_24} :catch_50
    .catchall {:try_start_1d .. :try_end_24} :catchall_5f

    .line 368
    .end local v2    # "inputStream":Ljava/io/FileInputStream;
    .local v3, "inputStream":Ljava/io/FileInputStream;
    :goto_24
    :try_start_24
    invoke-virtual {v3, v0}, Ljava/io/FileInputStream;->read([B)I
    :try_end_27
    .catch Ljava/io/FileNotFoundException; {:try_start_24 .. :try_end_27} :catch_40
    .catch Ljava/io/IOException; {:try_start_24 .. :try_end_27} :catch_74
    .catchall {:try_start_24 .. :try_end_27} :catchall_71

    move-result v4

    const/4 v6, -0x1

    if-ne v4, v6, :cond_3b

    .line 376
    if-eqz v3, :cond_6f

    .line 378
    :try_start_2d
    invoke-virtual {v3}, Ljava/io/FileInputStream;->close()V
    :try_end_30
    .catch Ljava/io/IOException; {:try_start_2d .. :try_end_30} :catch_6b

    move-object v2, v3

    .line 384
    .end local v3    # "inputStream":Ljava/io/FileInputStream;
    .restart local v2    # "inputStream":Ljava/io/FileInputStream;
    :cond_31
    :goto_31
    new-instance v6, Ljava/lang/String;

    invoke-virtual {v5}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/lang/String;-><init>([B)V

    goto :goto_13

    .line 369
    .end local v2    # "inputStream":Ljava/io/FileInputStream;
    .restart local v3    # "inputStream":Ljava/io/FileInputStream;
    :cond_3b
    const/4 v6, 0x0

    :try_start_3c
    invoke-virtual {v5, v0, v6, v4}, Ljava/io/ByteArrayOutputStream;->write([BII)V
    :try_end_3f
    .catch Ljava/io/FileNotFoundException; {:try_start_3c .. :try_end_3f} :catch_40
    .catch Ljava/io/IOException; {:try_start_3c .. :try_end_3f} :catch_74
    .catchall {:try_start_3c .. :try_end_3f} :catchall_71

    goto :goto_24

    .line 371
    :catch_40
    move-exception v1

    move-object v2, v3

    .line 372
    .end local v3    # "inputStream":Ljava/io/FileInputStream;
    .local v1, "e":Ljava/io/FileNotFoundException;
    .restart local v2    # "inputStream":Ljava/io/FileInputStream;
    :goto_42
    :try_start_42
    invoke-virtual {v1}, Ljava/io/FileNotFoundException;->printStackTrace()V
    :try_end_45
    .catchall {:try_start_42 .. :try_end_45} :catchall_5f

    .line 376
    if-eqz v2, :cond_31

    .line 378
    :try_start_47
    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V
    :try_end_4a
    .catch Ljava/io/IOException; {:try_start_47 .. :try_end_4a} :catch_4b

    goto :goto_31

    .line 379
    :catch_4b
    move-exception v1

    .line 380
    .local v1, "e":Ljava/io/IOException;
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_31

    .line 373
    .end local v1    # "e":Ljava/io/IOException;
    :catch_50
    move-exception v1

    .line 374
    .restart local v1    # "e":Ljava/io/IOException;
    :goto_51
    :try_start_51
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V
    :try_end_54
    .catchall {:try_start_51 .. :try_end_54} :catchall_5f

    .line 376
    if-eqz v2, :cond_31

    .line 378
    :try_start_56
    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V
    :try_end_59
    .catch Ljava/io/IOException; {:try_start_56 .. :try_end_59} :catch_5a

    goto :goto_31

    .line 379
    :catch_5a
    move-exception v1

    .line 380
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_31

    .line 375
    .end local v1    # "e":Ljava/io/IOException;
    :catchall_5f
    move-exception v6

    .line 376
    :goto_60
    if-eqz v2, :cond_65

    .line 378
    :try_start_62
    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V
    :try_end_65
    .catch Ljava/io/IOException; {:try_start_62 .. :try_end_65} :catch_66

    .line 383
    :cond_65
    :goto_65
    throw v6

    .line 379
    :catch_66
    move-exception v1

    .line 380
    .restart local v1    # "e":Ljava/io/IOException;
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_65

    .line 379
    .end local v1    # "e":Ljava/io/IOException;
    .end local v2    # "inputStream":Ljava/io/FileInputStream;
    .restart local v3    # "inputStream":Ljava/io/FileInputStream;
    :catch_6b
    move-exception v1

    .line 380
    .restart local v1    # "e":Ljava/io/IOException;
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    .end local v1    # "e":Ljava/io/IOException;
    :cond_6f
    move-object v2, v3

    .end local v3    # "inputStream":Ljava/io/FileInputStream;
    .restart local v2    # "inputStream":Ljava/io/FileInputStream;
    goto :goto_31

    .line 375
    .end local v2    # "inputStream":Ljava/io/FileInputStream;
    .restart local v3    # "inputStream":Ljava/io/FileInputStream;
    :catchall_71
    move-exception v6

    move-object v2, v3

    .end local v3    # "inputStream":Ljava/io/FileInputStream;
    .restart local v2    # "inputStream":Ljava/io/FileInputStream;
    goto :goto_60

    .line 373
    .end local v2    # "inputStream":Ljava/io/FileInputStream;
    .restart local v3    # "inputStream":Ljava/io/FileInputStream;
    :catch_74
    move-exception v1

    move-object v2, v3

    .end local v3    # "inputStream":Ljava/io/FileInputStream;
    .restart local v2    # "inputStream":Ljava/io/FileInputStream;
    goto :goto_51

    .line 371
    :catch_77
    move-exception v1

    goto :goto_42
.end method

.method public static getFileModifiedTime(JLjava/lang/String;)Ljava/lang/String;
    .registers 7
    .param p0, "time"    # J
    .param p2, "format"    # Ljava/lang/String;

    .prologue
    .line 302
    new-instance v0, Ljava/util/Date;

    invoke-direct {v0, p0, p1}, Ljava/util/Date;-><init>(J)V

    .line 303
    .local v0, "d":Ljava/util/Date;
    new-instance v1, Ljava/text/SimpleDateFormat;

    invoke-direct {v1, p2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 304
    .local v1, "simpleFormat":Ljava/text/Format;
    invoke-virtual {v1, v0}, Ljava/text/Format;->format(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method public static getFilePath(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 6
    .param p0, "dir"    # Ljava/lang/String;
    .param p1, "fileName"    # Ljava/lang/String;

    .prologue
    const/4 v3, 0x0

    .line 257
    invoke-static {}, Lcom/idelan/app/Util/SDCardUtil;->getSdcardPath()Ljava/lang/String;

    move-result-object v0

    .line 258
    .local v0, "sdcardPath":Ljava/lang/String;
    if-eqz p0, :cond_f

    const-string v1, ""

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_21

    .line 259
    :cond_f
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 265
    :goto_20
    return-object v1

    .line 261
    :cond_21
    invoke-virtual {p0, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    const-string v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_36

    .line 262
    const/4 v1, 0x1

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    invoke-virtual {p0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    .line 263
    :cond_36
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {p0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    const-string v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_52

    .line 264
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {p0, v3, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    .line 265
    :cond_52
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_20
.end method

.method public static getFileSize(J)Ljava/lang/String;
    .registers 16
    .param p0, "size"    # J

    .prologue
    const-wide/16 v12, 0x400

    .line 325
    const-wide/16 v10, 0x0

    cmp-long v10, p0, v10

    if-nez v10, :cond_b

    .line 326
    const-string v10, ""

    .line 344
    :goto_a
    return-object v10

    .line 327
    :cond_b
    move-wide v0, p0

    .line 328
    .local v0, "bt":J
    div-long v4, v0, v12

    .line 329
    .local v4, "kb":J
    div-long v6, v4, v12

    .line 330
    .local v6, "mb":J
    div-long v2, v6, v12

    .line 331
    .local v2, "gb":J
    div-long v8, v2, v12

    .line 332
    .local v8, "t":J
    cmp-long v10, v0, v12

    if-lez v10, :cond_84

    .line 333
    cmp-long v10, v4, v12

    if-lez v10, :cond_6c

    .line 334
    cmp-long v10, v6, v12

    if-lez v10, :cond_54

    .line 335
    cmp-long v10, v2, v12

    if-lez v10, :cond_3c

    .line 336
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-static {v8, v9}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v11

    invoke-static {v11}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v11

    invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v11, "T"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    goto :goto_a

    .line 338
    :cond_3c
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v11

    invoke-static {v11}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v11

    invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v11, "GB"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    goto :goto_a

    .line 340
    :cond_54
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-static {v6, v7}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v11

    invoke-static {v11}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v11

    invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v11, "MB"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    goto :goto_a

    .line 342
    :cond_6c
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-static {v4, v5}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v11

    invoke-static {v11}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v11

    invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v11, "KB"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    goto :goto_a

    .line 344
    :cond_84
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v11

    invoke-static {v11}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v11

    invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v11, "Byte"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    goto/16 :goto_a
.end method

.method public static getFileType(Ljava/lang/String;)I
    .registers 3
    .param p0, "filePath"    # Ljava/lang/String;

    .prologue
    .line 388
    invoke-virtual {p0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    .line 389
    .local v0, "path":Ljava/lang/String;
    const-string v1, "3gp"

    invoke-virtual {v0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_7c

    const-string v1, "asf"

    invoke-virtual {v0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_7c

    .line 390
    const-string v1, "avi"

    invoke-virtual {v0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_7c

    const-string v1, "m4u"

    invoke-virtual {v0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_7c

    .line 391
    const-string v1, "m4v"

    invoke-virtual {v0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_7c

    const-string v1, "mov"

    invoke-virtual {v0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_7c

    .line 392
    const-string v1, "mp4"

    invoke-virtual {v0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_7c

    const-string v1, "mpe"

    invoke-virtual {v0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_7c

    .line 393
    const-string v1, "mpeg"

    invoke-virtual {v0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_7c

    const-string v1, "mpg"

    invoke-virtual {v0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_7c

    .line 394
    const-string v1, "mpg4"

    invoke-virtual {v0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_7c

    const-string v1, "rmvb"

    invoke-virtual {v0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_7c

    .line 395
    const-string v1, "flv"

    invoke-virtual {v0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_7c

    const-string v1, "f4v"

    invoke-virtual {v0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_7c

    .line 396
    const-string v1, "mkv"

    invoke-virtual {v0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_7e

    .line 397
    :cond_7c
    const/4 v1, 0x2

    .line 414
    :goto_7d
    return v1

    .line 398
    :cond_7e
    const-string v1, "m3u"

    invoke-virtual {v0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_d6

    const-string v1, "m4a"

    invoke-virtual {v0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_d6

    .line 399
    const-string v1, "m4b"

    invoke-virtual {v0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_d6

    const-string v1, "m4p"

    invoke-virtual {v0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_d6

    .line 400
    const-string v1, "mp2"

    invoke-virtual {v0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_d6

    const-string v1, "mp3"

    invoke-virtual {v0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_d6

    .line 401
    const-string v1, "ogg"

    invoke-virtual {v0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_d6

    const-string v1, "mpga"

    invoke-virtual {v0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_d6

    .line 402
    const-string v1, "wma"

    invoke-virtual {v0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_d6

    const-string v1, "wmv"

    invoke-virtual {v0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_d6

    .line 403
    const-string v1, "wav"

    invoke-virtual {v0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_d8

    .line 404
    :cond_d6
    const/4 v1, 0x5

    goto :goto_7d

    .line 405
    :cond_d8
    const-string v1, "jpg"

    invoke-virtual {v0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_100

    const-string v1, "jpeg"

    invoke-virtual {v0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_100

    .line 406
    const-string v1, "gif"

    invoke-virtual {v0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_100

    const-string v1, "bmp"

    invoke-virtual {v0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_100

    .line 407
    const-string v1, "png"

    invoke-virtual {v0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_103

    .line 408
    :cond_100
    const/4 v1, 0x1

    goto/16 :goto_7d

    .line 409
    :cond_103
    const-string v1, "txt"

    invoke-virtual {v0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_133

    const-string v1, "doc"

    invoke-virtual {v0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_133

    .line 410
    const-string v1, "docx"

    invoke-virtual {v0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_133

    const-string v1, "htm"

    invoke-virtual {v0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_133

    .line 411
    const-string v1, "html"

    invoke-virtual {v0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_133

    const-string v1, "pdf"

    invoke-virtual {v0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_136

    .line 412
    :cond_133
    const/4 v1, 0x4

    goto/16 :goto_7d

    .line 414
    :cond_136
    const/4 v1, 0x0

    goto/16 :goto_7d
.end method

.method public static getFiles(Ljava/lang/String;)[Ljava/io/File;
    .registers 2
    .param p0, "filePath"    # Ljava/lang/String;

    .prologue
    .line 68
    invoke-static {p0}, Lcom/idelan/app/Util/SDCardUtil;->isFileExist(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_d

    .line 69
    sget-object v0, Lcom/idelan/app/Util/SDCardUtil;->file:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v0

    .line 71
    :goto_c
    return-object v0

    :cond_d
    const/4 v0, 0x0

    goto :goto_c
.end method

.method public static getFiles(Ljava/lang/String;Ljava/lang/String;)[Ljava/io/File;
    .registers 3
    .param p0, "dir"    # Ljava/lang/String;
    .param p1, "fileName"    # Ljava/lang/String;

    .prologue
    .line 55
    invoke-static {p0, p1}, Lcom/idelan/app/Util/SDCardUtil;->isFileExist(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_d

    .line 56
    sget-object v0, Lcom/idelan/app/Util/SDCardUtil;->file:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v0

    .line 58
    :goto_c
    return-object v0

    :cond_d
    const/4 v0, 0x0

    goto :goto_c
.end method

.method public static getIcon(Landroid/content/Context;Ljava/lang/String;)I
    .registers 4
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "filePath"    # Ljava/lang/String;

    .prologue
    .line 418
    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    .line 419
    .local v0, "path":Ljava/lang/String;
    const-string v1, "apk"

    invoke-virtual {v0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_13

    .line 420
    const-string v1, "apk_file_icon"

    invoke-static {p0, v1}, Lcom/idelan/app/Util/ResourceUtil;->getDrawableId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    .line 490
    :goto_12
    return v1

    .line 421
    :cond_13
    const-string v1, "txt"

    invoke-virtual {v0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_22

    .line 422
    const-string v1, "txt_icon"

    invoke-static {p0, v1}, Lcom/idelan/app/Util/ResourceUtil;->getDrawableId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    goto :goto_12

    .line 423
    :cond_22
    const-string v1, "3gp"

    invoke-virtual {v0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_9a

    const-string v1, "asf"

    invoke-virtual {v0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_9a

    .line 424
    const-string v1, "avi"

    invoke-virtual {v0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_9a

    const-string v1, "m4u"

    invoke-virtual {v0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_9a

    .line 425
    const-string v1, "m4v"

    invoke-virtual {v0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_9a

    const-string v1, "mov"

    invoke-virtual {v0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_9a

    .line 426
    const-string v1, "mp4"

    invoke-virtual {v0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_9a

    const-string v1, "mpe"

    invoke-virtual {v0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_9a

    .line 427
    const-string v1, "mpeg"

    invoke-virtual {v0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_9a

    const-string v1, "mpg"

    invoke-virtual {v0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_9a

    .line 428
    const-string v1, "mpg4"

    invoke-virtual {v0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_9a

    const-string v1, "rmvb"

    invoke-virtual {v0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_9a

    .line 429
    const-string v1, "flv"

    invoke-virtual {v0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_9a

    const-string v1, "f4v"

    invoke-virtual {v0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_9a

    .line 430
    const-string v1, "mkv"

    invoke-virtual {v0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_a2

    .line 431
    :cond_9a
    const-string v1, "vedio_icon"

    invoke-static {p0, v1}, Lcom/idelan/app/Util/ResourceUtil;->getDrawableId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    goto/16 :goto_12

    .line 432
    :cond_a2
    const-string v1, "m3u"

    invoke-virtual {v0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_fa

    const-string v1, "m4a"

    invoke-virtual {v0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_fa

    .line 433
    const-string v1, "m4b"

    invoke-virtual {v0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_fa

    const-string v1, "m4p"

    invoke-virtual {v0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_fa

    .line 434
    const-string v1, "mp2"

    invoke-virtual {v0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_fa

    const-string v1, "mp3"

    invoke-virtual {v0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_fa

    .line 435
    const-string v1, "ogg"

    invoke-virtual {v0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_fa

    const-string v1, "mpga"

    invoke-virtual {v0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_fa

    .line 436
    const-string v1, "wma"

    invoke-virtual {v0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_fa

    const-string v1, "wmv"

    invoke-virtual {v0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_fa

    .line 437
    const-string v1, "wav"

    invoke-virtual {v0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_102

    .line 438
    :cond_fa
    const-string v1, "audio_icon"

    invoke-static {p0, v1}, Lcom/idelan/app/Util/ResourceUtil;->getDrawableId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    goto/16 :goto_12

    .line 439
    :cond_102
    const-string v1, "jpg"

    invoke-virtual {v0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_12a

    const-string v1, "jpeg"

    invoke-virtual {v0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_12a

    .line 440
    const-string v1, "gif"

    invoke-virtual {v0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_12a

    const-string v1, "bmp"

    invoke-virtual {v0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_12a

    .line 441
    const-string v1, "png"

    invoke-virtual {v0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_132

    .line 442
    :cond_12a
    const-string v1, "picture_icon"

    invoke-static {p0, v1}, Lcom/idelan/app/Util/ResourceUtil;->getDrawableId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    goto/16 :goto_12

    .line 443
    :cond_132
    const-string v1, "c"

    invoke-virtual {v0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_142

    .line 444
    const-string v1, "c_icon"

    invoke-static {p0, v1}, Lcom/idelan/app/Util/ResourceUtil;->getDrawableId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    goto/16 :goto_12

    .line 445
    :cond_142
    const-string v1, "doc"

    invoke-virtual {v0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_152

    const-string v1, "docx"

    invoke-virtual {v0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_15a

    .line 446
    :cond_152
    const-string v1, "word_icon"

    invoke-static {p0, v1}, Lcom/idelan/app/Util/ResourceUtil;->getDrawableId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    goto/16 :goto_12

    .line 447
    :cond_15a
    const-string v1, "xls"

    invoke-virtual {v0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_16a

    const-string v1, "xlsx"

    invoke-virtual {v0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_172

    .line 448
    :cond_16a
    const-string v1, "xls_icon"

    invoke-static {p0, v1}, Lcom/idelan/app/Util/ResourceUtil;->getDrawableId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    goto/16 :goto_12

    .line 449
    :cond_172
    const-string v1, "exe"

    invoke-virtual {v0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_182

    .line 450
    const-string v1, "exe_icon"

    invoke-static {p0, v1}, Lcom/idelan/app/Util/ResourceUtil;->getDrawableId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    goto/16 :goto_12

    .line 451
    :cond_182
    const-string v1, "htm"

    invoke-virtual {v0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_192

    const-string v1, "html"

    invoke-virtual {v0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_19a

    .line 452
    :cond_192
    const-string v1, "html_icon"

    invoke-static {p0, v1}, Lcom/idelan/app/Util/ResourceUtil;->getDrawableId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    goto/16 :goto_12

    .line 453
    :cond_19a
    const-string v1, "java"

    invoke-virtual {v0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1aa

    .line 454
    const-string v1, "java_icon"

    invoke-static {p0, v1}, Lcom/idelan/app/Util/ResourceUtil;->getDrawableId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    goto/16 :goto_12

    .line 455
    :cond_1aa
    const-string v1, "pdf"

    invoke-virtual {v0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1ba

    .line 456
    const-string v1, "pdf_icon"

    invoke-static {p0, v1}, Lcom/idelan/app/Util/ResourceUtil;->getDrawableId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    goto/16 :goto_12

    .line 457
    :cond_1ba
    const-string v1, "pps"

    invoke-virtual {v0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1d2

    const-string v1, "ppt"

    invoke-virtual {v0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1d2

    .line 458
    const-string v1, "pptx"

    invoke-virtual {v0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1da

    .line 459
    :cond_1d2
    const-string v1, "ppt_icon"

    invoke-static {p0, v1}, Lcom/idelan/app/Util/ResourceUtil;->getDrawableId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    goto/16 :goto_12

    .line 460
    :cond_1da
    const-string v1, "rtf"

    invoke-virtual {v0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1ea

    .line 461
    const-string v1, "rtf_icon"

    invoke-static {p0, v1}, Lcom/idelan/app/Util/ResourceUtil;->getDrawableId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    goto/16 :goto_12

    .line 462
    :cond_1ea
    const-string v1, "rar"

    invoke-virtual {v0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1fa

    const-string v1, "rar5"

    invoke-virtual {v0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_202

    .line 463
    :cond_1fa
    const-string v1, "compressed_icon_rar"

    invoke-static {p0, v1}, Lcom/idelan/app/Util/ResourceUtil;->getDrawableId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    goto/16 :goto_12

    .line 464
    :cond_202
    const-string v1, "7z"

    invoke-virtual {v0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_212

    .line 465
    const-string v1, "compressed_icon_7"

    invoke-static {p0, v1}, Lcom/idelan/app/Util/ResourceUtil;->getDrawableId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    goto/16 :goto_12

    .line 466
    :cond_212
    const-string v1, "zip"

    invoke-virtual {v0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_24a

    const-string v1, "gz"

    invoke-virtual {v0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_24a

    .line 467
    const-string v1, "bz2"

    invoke-virtual {v0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_24a

    const-string v1, "tar"

    invoke-virtual {v0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_24a

    .line 468
    const-string v1, "xz"

    invoke-virtual {v0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_24a

    const-string v1, "lzh"

    invoke-virtual {v0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_24a

    .line 469
    const-string v1, "wim"

    invoke-virtual {v0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_252

    .line 470
    :cond_24a
    const-string v1, "compressed_icon"

    invoke-static {p0, v1}, Lcom/idelan/app/Util/ResourceUtil;->getDrawableId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    goto/16 :goto_12

    .line 471
    :cond_252
    const-string v1, "ai"

    invoke-virtual {v0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_262

    .line 472
    const-string v1, "ai_icon"

    invoke-static {p0, v1}, Lcom/idelan/app/Util/ResourceUtil;->getDrawableId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    goto/16 :goto_12

    .line 473
    :cond_262
    const-string v1, "chm"

    invoke-virtual {v0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_272

    .line 474
    const-string v1, "chm_file_icon"

    invoke-static {p0, v1}, Lcom/idelan/app/Util/ResourceUtil;->getDrawableId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    goto/16 :goto_12

    .line 475
    :cond_272
    const-string v1, "epub"

    invoke-virtual {v0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_282

    .line 476
    const-string v1, "epub_icon"

    invoke-static {p0, v1}, Lcom/idelan/app/Util/ResourceUtil;->getDrawableId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    goto/16 :goto_12

    .line 477
    :cond_282
    const-string v1, "fla"

    invoke-virtual {v0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_292

    .line 478
    const-string v1, "fla_icon"

    invoke-static {p0, v1}, Lcom/idelan/app/Util/ResourceUtil;->getDrawableId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    goto/16 :goto_12

    .line 479
    :cond_292
    const-string v1, "ipa"

    invoke-virtual {v0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2a2

    .line 480
    const-string v1, "ipa_icon"

    invoke-static {p0, v1}, Lcom/idelan/app/Util/ResourceUtil;->getDrawableId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    goto/16 :goto_12

    .line 481
    :cond_2a2
    const-string v1, "php"

    invoke-virtual {v0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2b2

    .line 482
    const-string v1, "php_icon"

    invoke-static {p0, v1}, Lcom/idelan/app/Util/ResourceUtil;->getDrawableId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    goto/16 :goto_12

    .line 483
    :cond_2b2
    const-string v1, "psd"

    invoke-virtual {v0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2c2

    .line 484
    const-string v1, "psd_picture_icon"

    invoke-static {p0, v1}, Lcom/idelan/app/Util/ResourceUtil;->getDrawableId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    goto/16 :goto_12

    .line 485
    :cond_2c2
    const-string v1, "xap"

    invoke-virtual {v0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2d2

    .line 486
    const-string v1, "xap_icon"

    invoke-static {p0, v1}, Lcom/idelan/app/Util/ResourceUtil;->getDrawableId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    goto/16 :goto_12

    .line 487
    :cond_2d2
    const-string v1, "swf"

    invoke-virtual {v0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2e2

    .line 488
    const-string v1, "swf_icon"

    invoke-static {p0, v1}, Lcom/idelan/app/Util/ResourceUtil;->getDrawableId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    goto/16 :goto_12

    .line 490
    :cond_2e2
    const-string v1, "unknow_file_icon"

    invoke-static {p0, v1}, Lcom/idelan/app/Util/ResourceUtil;->getDrawableId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    goto/16 :goto_12
.end method

.method public static getImageVideoFiles([Ljava/io/File;)Ljava/util/List;
    .registers 5
    .param p0, "files"    # [Ljava/io/File;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/io/File;",
            ")",
            "Ljava/util/List",
            "<",
            "Ljava/io/File;",
            ">;"
        }
    .end annotation

    .prologue
    .line 101
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 102
    .local v2, "list":Ljava/util/List;, "Ljava/util/List<Ljava/io/File;>;"
    if-eqz p0, :cond_b

    .line 103
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_8
    array-length v3, p0

    if-lt v1, v3, :cond_13

    .line 128
    .end local v1    # "i":I
    :cond_b
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v3

    if-nez v3, :cond_12

    .line 129
    const/4 v2, 0x0

    .line 130
    .end local v2    # "list":Ljava/util/List;, "Ljava/util/List<Ljava/io/File;>;"
    :cond_12
    return-object v2

    .line 104
    .restart local v1    # "i":I
    .restart local v2    # "list":Ljava/util/List;, "Ljava/util/List<Ljava/io/File;>;"
    :cond_13
    aget-object v3, p0, v1

    invoke-virtual {v3}, Ljava/io/File;->isFile()Z

    move-result v3

    if-eqz v3, :cond_ca

    .line 105
    aget-object v3, p0, v1

    invoke-virtual {v3}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    .line 106
    .local v0, "filepath":Ljava/lang/String;
    const-string v3, "jpg"

    invoke-virtual {v0, v3}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_c5

    const-string v3, "jpeg"

    invoke-virtual {v0, v3}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_c5

    .line 107
    const-string v3, "gif"

    invoke-virtual {v0, v3}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_c5

    .line 108
    const-string v3, "bmp"

    invoke-virtual {v0, v3}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_c5

    .line 109
    const-string v3, "png"

    invoke-virtual {v0, v3}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_c5

    .line 110
    const-string v3, "3gp"

    invoke-virtual {v0, v3}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_c5

    .line 111
    const-string v3, "asf"

    invoke-virtual {v0, v3}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_c5

    .line 112
    const-string v3, "avi"

    invoke-virtual {v0, v3}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_c5

    .line 113
    const-string v3, "m4u"

    invoke-virtual {v0, v3}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_c5

    .line 114
    const-string v3, "m4v"

    invoke-virtual {v0, v3}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_c5

    .line 115
    const-string v3, "mov"

    invoke-virtual {v0, v3}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_c5

    .line 116
    const-string v3, "mp4"

    invoke-virtual {v0, v3}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_c5

    .line 117
    const-string v3, "mpe"

    invoke-virtual {v0, v3}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_c5

    .line 118
    const-string v3, "mpeg"

    invoke-virtual {v0, v3}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_c5

    .line 119
    const-string v3, "mpg"

    invoke-virtual {v0, v3}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_c5

    .line 120
    const-string v3, "mpg4"

    invoke-virtual {v0, v3}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_c5

    .line 121
    const-string v3, "rmvb"

    invoke-virtual {v0, v3}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_c5

    .line 122
    const-string v3, "flv"

    invoke-virtual {v0, v3}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_c5

    .line 123
    const-string v3, "f4v"

    invoke-virtual {v0, v3}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_c5

    .line 124
    const-string v3, "mkv"

    invoke-virtual {v0, v3}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_ca

    .line 125
    :cond_c5
    aget-object v3, p0, v1

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 103
    .end local v0    # "filepath":Ljava/lang/String;
    :cond_ca
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_8
.end method

.method public static getImgFiles([Ljava/io/File;)Ljava/util/List;
    .registers 5
    .param p0, "files"    # [Ljava/io/File;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/io/File;",
            ")",
            "Ljava/util/List",
            "<",
            "Ljava/io/File;",
            ">;"
        }
    .end annotation

    .prologue
    .line 140
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 141
    .local v2, "list":Ljava/util/List;, "Ljava/util/List<Ljava/io/File;>;"
    if-eqz p0, :cond_b

    .line 142
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_8
    array-length v3, p0

    if-lt v1, v3, :cond_13

    .line 152
    .end local v1    # "i":I
    :cond_b
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v3

    if-nez v3, :cond_12

    .line 153
    const/4 v2, 0x0

    .line 154
    .end local v2    # "list":Ljava/util/List;, "Ljava/util/List<Ljava/io/File;>;"
    :cond_12
    return-object v2

    .line 143
    .restart local v1    # "i":I
    .restart local v2    # "list":Ljava/util/List;, "Ljava/util/List<Ljava/io/File;>;"
    :cond_13
    aget-object v3, p0, v1

    invoke-virtual {v3}, Ljava/io/File;->isFile()Z

    move-result v3

    if-eqz v3, :cond_52

    .line 144
    aget-object v3, p0, v1

    invoke-virtual {v3}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    .line 145
    .local v0, "filepath":Ljava/lang/String;
    const-string v3, "jpg"

    invoke-virtual {v0, v3}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_4d

    const-string v3, "jpeg"

    invoke-virtual {v0, v3}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_4d

    .line 146
    const-string v3, "gif"

    invoke-virtual {v0, v3}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_4d

    .line 147
    const-string v3, "bmp"

    invoke-virtual {v0, v3}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_4d

    .line 148
    const-string v3, "png"

    invoke-virtual {v0, v3}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_52

    .line 149
    :cond_4d
    aget-object v3, p0, v1

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 142
    .end local v0    # "filepath":Ljava/lang/String;
    :cond_52
    add-int/lit8 v1, v1, 0x1

    goto :goto_8
.end method

.method public static getImgPath([Ljava/io/File;)Ljava/lang/String;
    .registers 4
    .param p0, "files"    # [Ljava/io/File;

    .prologue
    .line 179
    const-string v0, ""

    .line 180
    .local v0, "filepath":Ljava/lang/String;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_3
    array-length v2, p0

    if-lt v1, v2, :cond_8

    move-object v2, v0

    .line 191
    :goto_7
    return-object v2

    .line 181
    :cond_8
    aget-object v2, p0, v1

    invoke-virtual {v2}, Ljava/io/File;->isFile()Z

    move-result v2

    if-eqz v2, :cond_47

    .line 182
    aget-object v2, p0, v1

    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    .line 183
    const-string v2, "jpg"

    invoke-virtual {v0, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_42

    const-string v2, "jpeg"

    invoke-virtual {v0, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_42

    .line 184
    const-string v2, "gif"

    invoke-virtual {v0, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_42

    const-string v2, "bmp"

    invoke-virtual {v0, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_42

    .line 185
    const-string v2, "png"

    invoke-virtual {v0, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_44

    :cond_42
    move-object v2, v0

    .line 186
    goto :goto_7

    .line 188
    :cond_44
    const-string v2, ""

    goto :goto_7

    .line 180
    :cond_47
    add-int/lit8 v1, v1, 0x1

    goto :goto_3
.end method

.method public static getImgPngFiles([Ljava/io/File;)Ljava/util/List;
    .registers 5
    .param p0, "files"    # [Ljava/io/File;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/io/File;",
            ")",
            "Ljava/util/List",
            "<",
            "Ljava/io/File;",
            ">;"
        }
    .end annotation

    .prologue
    .line 164
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 165
    .local v2, "list":Ljava/util/List;, "Ljava/util/List<Ljava/io/File;>;"
    if-eqz p0, :cond_b

    .line 166
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_8
    array-length v3, p0

    if-lt v1, v3, :cond_13

    .line 173
    .end local v1    # "i":I
    :cond_b
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v3

    if-nez v3, :cond_12

    .line 174
    const/4 v2, 0x0

    .line 175
    .end local v2    # "list":Ljava/util/List;, "Ljava/util/List<Ljava/io/File;>;"
    :cond_12
    return-object v2

    .line 167
    .restart local v1    # "i":I
    .restart local v2    # "list":Ljava/util/List;, "Ljava/util/List<Ljava/io/File;>;"
    :cond_13
    aget-object v3, p0, v1

    invoke-virtual {v3}, Ljava/io/File;->isFile()Z

    move-result v3

    if-eqz v3, :cond_32

    .line 168
    aget-object v3, p0, v1

    invoke-virtual {v3}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    .line 169
    .local v0, "filepath":Ljava/lang/String;
    const-string v3, "png"

    invoke-virtual {v0, v3}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_32

    .line 170
    aget-object v3, p0, v1

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 166
    .end local v0    # "filepath":Ljava/lang/String;
    :cond_32
    add-int/lit8 v1, v1, 0x1

    goto :goto_8
.end method

.method public static getMIMEType(Ljava/io/File;)Ljava/lang/String;
    .registers 9
    .param p0, "file"    # Ljava/io/File;

    .prologue
    .line 566
    const-string v4, "*/*"

    .line 567
    .local v4, "type":Ljava/lang/String;
    invoke-virtual {p0}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v2

    .line 569
    .local v2, "fName":Ljava/lang/String;
    const-string v6, "."

    invoke-virtual {v2, v6}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v0

    .line 570
    .local v0, "dotIndex":I
    if-gez v0, :cond_10

    move-object v5, v4

    .line 582
    .end local v4    # "type":Ljava/lang/String;
    .local v5, "type":Ljava/lang/String;
    :goto_f
    return-object v5

    .line 574
    .end local v5    # "type":Ljava/lang/String;
    .restart local v4    # "type":Ljava/lang/String;
    :cond_10
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v6

    invoke-virtual {v2, v0, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    .line 575
    .local v1, "end":Ljava/lang/String;
    const-string v6, ""

    if-ne v1, v6, :cond_22

    move-object v5, v4

    .line 576
    .end local v4    # "type":Ljava/lang/String;
    .restart local v5    # "type":Ljava/lang/String;
    goto :goto_f

    .line 578
    .end local v5    # "type":Ljava/lang/String;
    .restart local v4    # "type":Ljava/lang/String;
    :cond_22
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_23
    sget-object v6, Lcom/idelan/app/Util/SDCardUtil;->MIME_MapTable:[[Ljava/lang/String;

    array-length v6, v6

    if-lt v3, v6, :cond_2a

    move-object v5, v4

    .line 582
    .end local v4    # "type":Ljava/lang/String;
    .restart local v5    # "type":Ljava/lang/String;
    goto :goto_f

    .line 579
    .end local v5    # "type":Ljava/lang/String;
    .restart local v4    # "type":Ljava/lang/String;
    :cond_2a
    sget-object v6, Lcom/idelan/app/Util/SDCardUtil;->MIME_MapTable:[[Ljava/lang/String;

    aget-object v6, v6, v3

    const/4 v7, 0x0

    aget-object v6, v6, v7

    invoke-virtual {v1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_3e

    .line 580
    sget-object v6, Lcom/idelan/app/Util/SDCardUtil;->MIME_MapTable:[[Ljava/lang/String;

    aget-object v6, v6, v3

    const/4 v7, 0x1

    aget-object v4, v6, v7

    .line 578
    :cond_3e
    add-int/lit8 v3, v3, 0x1

    goto :goto_23
.end method

.method public static getSdcardPath()Ljava/lang/String;
    .registers 2

    .prologue
    .line 288
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 289
    sget-object v1, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 288
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getVideoFiles([Ljava/io/File;)Ljava/util/List;
    .registers 5
    .param p0, "files"    # [Ljava/io/File;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/io/File;",
            ")",
            "Ljava/util/List",
            "<",
            "Ljava/io/File;",
            ">;"
        }
    .end annotation

    .prologue
    .line 201
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 202
    .local v2, "list":Ljava/util/List;, "Ljava/util/List<Ljava/io/File;>;"
    if-eqz p0, :cond_b

    .line 203
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_8
    array-length v3, p0

    if-lt v1, v3, :cond_13

    .line 223
    .end local v1    # "i":I
    :cond_b
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v3

    if-nez v3, :cond_12

    .line 224
    const/4 v2, 0x0

    .line 225
    .end local v2    # "list":Ljava/util/List;, "Ljava/util/List<Ljava/io/File;>;"
    :cond_12
    return-object v2

    .line 204
    .restart local v1    # "i":I
    .restart local v2    # "list":Ljava/util/List;, "Ljava/util/List<Ljava/io/File;>;"
    :cond_13
    aget-object v3, p0, v1

    invoke-virtual {v3}, Ljava/io/File;->isFile()Z

    move-result v3

    if-eqz v3, :cond_a2

    .line 205
    aget-object v3, p0, v1

    invoke-virtual {v3}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    .line 206
    .local v0, "filepath":Ljava/lang/String;
    const-string v3, "3gp"

    invoke-virtual {v0, v3}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_9d

    const-string v3, "asf"

    invoke-virtual {v0, v3}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_9d

    .line 207
    const-string v3, "avi"

    invoke-virtual {v0, v3}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_9d

    .line 208
    const-string v3, "m4u"

    invoke-virtual {v0, v3}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_9d

    .line 209
    const-string v3, "m4v"

    invoke-virtual {v0, v3}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_9d

    .line 210
    const-string v3, "mov"

    invoke-virtual {v0, v3}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_9d

    .line 211
    const-string v3, "mp4"

    invoke-virtual {v0, v3}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_9d

    .line 212
    const-string v3, "mpe"

    invoke-virtual {v0, v3}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_9d

    .line 213
    const-string v3, "mpeg"

    invoke-virtual {v0, v3}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_9d

    .line 214
    const-string v3, "mpg"

    invoke-virtual {v0, v3}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_9d

    .line 215
    const-string v3, "mpg4"

    invoke-virtual {v0, v3}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_9d

    .line 216
    const-string v3, "rmvb"

    invoke-virtual {v0, v3}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_9d

    .line 217
    const-string v3, "flv"

    invoke-virtual {v0, v3}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_9d

    .line 218
    const-string v3, "f4v"

    invoke-virtual {v0, v3}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_9d

    .line 219
    const-string v3, "mkv"

    invoke-virtual {v0, v3}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_a2

    .line 220
    :cond_9d
    aget-object v3, p0, v1

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 203
    .end local v0    # "filepath":Ljava/lang/String;
    :cond_a2
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_8
.end method

.method public static isFileExist(Ljava/lang/String;)Z
    .registers 2
    .param p0, "filePath"    # Ljava/lang/String;

    .prologue
    .line 43
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/idelan/app/Util/SDCardUtil;->file:Ljava/io/File;

    .line 44
    sget-object v0, Lcom/idelan/app/Util/SDCardUtil;->file:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    return v0
.end method

.method public static isFileExist(Ljava/lang/String;Ljava/lang/String;)Z
    .registers 4
    .param p0, "dir"    # Ljava/lang/String;
    .param p1, "fileName"    # Ljava/lang/String;

    .prologue
    .line 37
    invoke-static {p0, p1}, Lcom/idelan/app/Util/SDCardUtil;->getFilePath(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 38
    .local v0, "filePath":Ljava/lang/String;
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    sput-object v1, Lcom/idelan/app/Util/SDCardUtil;->file:Ljava/io/File;

    .line 39
    sget-object v1, Lcom/idelan/app/Util/SDCardUtil;->file:Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v1

    return v1
.end method

.method public static isSdCardExist()Z
    .registers 2

    .prologue
    .line 275
    const-string v0, "mounted"

    .line 276
    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v1

    .line 275
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    .line 276
    if-eqz v0, :cond_e

    .line 277
    const/4 v0, 0x1

    .line 279
    :goto_d
    return v0

    :cond_e
    const/4 v0, 0x0

    goto :goto_d
.end method

.method public static saveToSdcard(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
    .registers 10
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "dir"    # Ljava/lang/String;
    .param p2, "fileName"    # Ljava/lang/String;
    .param p3, "content"    # Ljava/lang/String;

    .prologue
    const/4 v4, 0x0

    .line 532
    const/4 v3, 0x0

    .line 533
    .local v3, "flag":Z
    const/4 v1, 0x0

    .line 534
    .local v1, "fileOutputStream":Ljava/io/FileOutputStream;
    invoke-static {}, Lcom/idelan/app/Util/SDCardUtil;->isSdCardExist()Z

    move-result v5

    if-nez v5, :cond_a

    .line 556
    :cond_9
    :goto_9
    return v4

    .line 536
    :cond_a
    invoke-static {p1, p2}, Lcom/idelan/app/Util/SDCardUtil;->isFileExist(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_9

    .line 539
    :try_start_10
    new-instance v2, Ljava/io/FileOutputStream;

    sget-object v4, Lcom/idelan/app/Util/SDCardUtil;->file:Ljava/io/File;

    invoke-direct {v2, v4}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_17
    .catch Ljava/io/FileNotFoundException; {:try_start_10 .. :try_end_17} :catch_27
    .catch Ljava/io/IOException; {:try_start_10 .. :try_end_17} :catch_36
    .catchall {:try_start_10 .. :try_end_17} :catchall_45

    .line 541
    .end local v1    # "fileOutputStream":Ljava/io/FileOutputStream;
    .local v2, "fileOutputStream":Ljava/io/FileOutputStream;
    :try_start_17
    invoke-virtual {p3}, Ljava/lang/String;->getBytes()[B

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/io/FileOutputStream;->write([B)V
    :try_end_1e
    .catch Ljava/io/FileNotFoundException; {:try_start_17 .. :try_end_1e} :catch_5d
    .catch Ljava/io/IOException; {:try_start_17 .. :try_end_1e} :catch_5a
    .catchall {:try_start_17 .. :try_end_1e} :catchall_57

    .line 542
    const/4 v3, 0x1

    .line 548
    if-eqz v2, :cond_55

    .line 550
    :try_start_21
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V
    :try_end_24
    .catch Ljava/io/IOException; {:try_start_21 .. :try_end_24} :catch_51

    move-object v1, v2

    .end local v2    # "fileOutputStream":Ljava/io/FileOutputStream;
    .restart local v1    # "fileOutputStream":Ljava/io/FileOutputStream;
    :cond_25
    :goto_25
    move v4, v3

    .line 556
    goto :goto_9

    .line 543
    :catch_27
    move-exception v0

    .line 544
    .local v0, "e":Ljava/io/FileNotFoundException;
    :goto_28
    :try_start_28
    invoke-virtual {v0}, Ljava/io/FileNotFoundException;->printStackTrace()V
    :try_end_2b
    .catchall {:try_start_28 .. :try_end_2b} :catchall_45

    .line 548
    if-eqz v1, :cond_25

    .line 550
    :try_start_2d
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V
    :try_end_30
    .catch Ljava/io/IOException; {:try_start_2d .. :try_end_30} :catch_31

    goto :goto_25

    .line 551
    :catch_31
    move-exception v0

    .line 552
    .local v0, "e":Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_25

    .line 545
    .end local v0    # "e":Ljava/io/IOException;
    :catch_36
    move-exception v0

    .line 546
    .restart local v0    # "e":Ljava/io/IOException;
    :goto_37
    :try_start_37
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V
    :try_end_3a
    .catchall {:try_start_37 .. :try_end_3a} :catchall_45

    .line 548
    if-eqz v1, :cond_25

    .line 550
    :try_start_3c
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V
    :try_end_3f
    .catch Ljava/io/IOException; {:try_start_3c .. :try_end_3f} :catch_40

    goto :goto_25

    .line 551
    :catch_40
    move-exception v0

    .line 552
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_25

    .line 547
    .end local v0    # "e":Ljava/io/IOException;
    :catchall_45
    move-exception v4

    .line 548
    :goto_46
    if-eqz v1, :cond_4b

    .line 550
    :try_start_48
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V
    :try_end_4b
    .catch Ljava/io/IOException; {:try_start_48 .. :try_end_4b} :catch_4c

    .line 555
    :cond_4b
    :goto_4b
    throw v4

    .line 551
    :catch_4c
    move-exception v0

    .line 552
    .restart local v0    # "e":Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_4b

    .line 551
    .end local v0    # "e":Ljava/io/IOException;
    .end local v1    # "fileOutputStream":Ljava/io/FileOutputStream;
    .restart local v2    # "fileOutputStream":Ljava/io/FileOutputStream;
    :catch_51
    move-exception v0

    .line 552
    .restart local v0    # "e":Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    .end local v0    # "e":Ljava/io/IOException;
    :cond_55
    move-object v1, v2

    .end local v2    # "fileOutputStream":Ljava/io/FileOutputStream;
    .restart local v1    # "fileOutputStream":Ljava/io/FileOutputStream;
    goto :goto_25

    .line 547
    .end local v1    # "fileOutputStream":Ljava/io/FileOutputStream;
    .restart local v2    # "fileOutputStream":Ljava/io/FileOutputStream;
    :catchall_57
    move-exception v4

    move-object v1, v2

    .end local v2    # "fileOutputStream":Ljava/io/FileOutputStream;
    .restart local v1    # "fileOutputStream":Ljava/io/FileOutputStream;
    goto :goto_46

    .line 545
    .end local v1    # "fileOutputStream":Ljava/io/FileOutputStream;
    .restart local v2    # "fileOutputStream":Ljava/io/FileOutputStream;
    :catch_5a
    move-exception v0

    move-object v1, v2

    .end local v2    # "fileOutputStream":Ljava/io/FileOutputStream;
    .restart local v1    # "fileOutputStream":Ljava/io/FileOutputStream;
    goto :goto_37

    .line 543
    .end local v1    # "fileOutputStream":Ljava/io/FileOutputStream;
    .restart local v2    # "fileOutputStream":Ljava/io/FileOutputStream;
    :catch_5d
    move-exception v0

    move-object v1, v2

    .end local v2    # "fileOutputStream":Ljava/io/FileOutputStream;
    .restart local v1    # "fileOutputStream":Ljava/io/FileOutputStream;
    goto :goto_28
.end method

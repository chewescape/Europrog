.class public Lcom/idelan/app/Update/UpdateManager;
.super Ljava/lang/Object;
.source "UpdateManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/idelan/app/Update/UpdateManager$downloadApkThread;
    }
.end annotation


# static fields
.field private static final DOWNLOAD:I = 0x1

.field private static final DOWNLOAD_FINISH:I = 0x2

.field public static final UPDATE_DIALOG:I = 0x1d97c

.field public static final UPDATE_NOTIFI:I = 0x200f1

.field public static listener:Lcom/idelan/app/Update/UpdateListener;


# instance fields
.field private cancelUpdate:Z

.field private curType:I

.field private downUrl:Ljava/lang/String;

.field private mContext:Landroid/content/Context;

.field private mDownloadDialog:Landroid/app/Dialog;

.field private mHandler:Landroid/os/Handler;

.field private mProgress:Landroid/widget/ProgressBar;

.field private mSavePath:Ljava/lang/String;

.field private progress:I

.field private progressTV:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/content/Context;I)V
    .registers 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "type"    # I

    .prologue
    .line 83
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    const/4 v0, -0x1

    iput v0, p0, Lcom/idelan/app/Update/UpdateManager;->curType:I

    .line 48
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/idelan/app/Update/UpdateManager;->cancelUpdate:Z

    .line 58
    new-instance v0, Lcom/idelan/app/Update/UpdateManager$1;

    invoke-direct {v0, p0}, Lcom/idelan/app/Update/UpdateManager$1;-><init>(Lcom/idelan/app/Update/UpdateManager;)V

    iput-object v0, p0, Lcom/idelan/app/Update/UpdateManager;->mHandler:Landroid/os/Handler;

    .line 84
    iput-object p1, p0, Lcom/idelan/app/Update/UpdateManager;->mContext:Landroid/content/Context;

    .line 85
    iput p2, p0, Lcom/idelan/app/Update/UpdateManager;->curType:I

    .line 86
    return-void
.end method

.method static synthetic access$0(Lcom/idelan/app/Update/UpdateManager;)Landroid/widget/ProgressBar;
    .registers 2

    .prologue
    .line 52
    iget-object v0, p0, Lcom/idelan/app/Update/UpdateManager;->mProgress:Landroid/widget/ProgressBar;

    return-object v0
.end method

.method static synthetic access$1(Lcom/idelan/app/Update/UpdateManager;)I
    .registers 2

    .prologue
    .line 46
    iget v0, p0, Lcom/idelan/app/Update/UpdateManager;->progress:I

    return v0
.end method

.method static synthetic access$10(Lcom/idelan/app/Update/UpdateManager;)Z
    .registers 2

    .prologue
    .line 48
    iget-boolean v0, p0, Lcom/idelan/app/Update/UpdateManager;->cancelUpdate:Z

    return v0
.end method

.method static synthetic access$11(Lcom/idelan/app/Update/UpdateManager;)Landroid/app/Dialog;
    .registers 2

    .prologue
    .line 54
    iget-object v0, p0, Lcom/idelan/app/Update/UpdateManager;->mDownloadDialog:Landroid/app/Dialog;

    return-object v0
.end method

.method static synthetic access$12(Lcom/idelan/app/Update/UpdateManager;)I
    .registers 2

    .prologue
    .line 37
    iget v0, p0, Lcom/idelan/app/Update/UpdateManager;->curType:I

    return v0
.end method

.method static synthetic access$13(Lcom/idelan/app/Update/UpdateManager;)V
    .registers 1

    .prologue
    .line 172
    invoke-direct {p0}, Lcom/idelan/app/Update/UpdateManager;->showDownloadDialog()V

    return-void
.end method

.method static synthetic access$14(Lcom/idelan/app/Update/UpdateManager;Z)V
    .registers 2

    .prologue
    .line 48
    iput-boolean p1, p0, Lcom/idelan/app/Update/UpdateManager;->cancelUpdate:Z

    return-void
.end method

.method static synthetic access$2(Lcom/idelan/app/Update/UpdateManager;)Landroid/widget/TextView;
    .registers 2

    .prologue
    .line 53
    iget-object v0, p0, Lcom/idelan/app/Update/UpdateManager;->progressTV:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$3(Lcom/idelan/app/Update/UpdateManager;)V
    .registers 1

    .prologue
    .line 284
    invoke-direct {p0}, Lcom/idelan/app/Update/UpdateManager;->installApk()V

    return-void
.end method

.method static synthetic access$4(Lcom/idelan/app/Update/UpdateManager;Ljava/lang/String;)V
    .registers 2

    .prologue
    .line 44
    iput-object p1, p0, Lcom/idelan/app/Update/UpdateManager;->mSavePath:Ljava/lang/String;

    return-void
.end method

.method static synthetic access$5(Lcom/idelan/app/Update/UpdateManager;)Ljava/lang/String;
    .registers 2

    .prologue
    .line 55
    iget-object v0, p0, Lcom/idelan/app/Update/UpdateManager;->downUrl:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$6(Lcom/idelan/app/Update/UpdateManager;)Ljava/lang/String;
    .registers 2

    .prologue
    .line 44
    iget-object v0, p0, Lcom/idelan/app/Update/UpdateManager;->mSavePath:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$7(Lcom/idelan/app/Update/UpdateManager;)Landroid/content/Context;
    .registers 2

    .prologue
    .line 50
    iget-object v0, p0, Lcom/idelan/app/Update/UpdateManager;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$8(Lcom/idelan/app/Update/UpdateManager;I)V
    .registers 2

    .prologue
    .line 46
    iput p1, p0, Lcom/idelan/app/Update/UpdateManager;->progress:I

    return-void
.end method

.method static synthetic access$9(Lcom/idelan/app/Update/UpdateManager;)Landroid/os/Handler;
    .registers 2

    .prologue
    .line 58
    iget-object v0, p0, Lcom/idelan/app/Update/UpdateManager;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method private downloadApk()V
    .registers 3

    .prologue
    .line 210
    new-instance v0, Lcom/idelan/app/Update/UpdateManager$downloadApkThread;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/idelan/app/Update/UpdateManager$downloadApkThread;-><init>(Lcom/idelan/app/Update/UpdateManager;Lcom/idelan/app/Update/UpdateManager$downloadApkThread;)V

    invoke-virtual {v0}, Lcom/idelan/app/Update/UpdateManager$downloadApkThread;->start()V

    .line 211
    return-void
.end method

.method private installApk()V
    .registers 5

    .prologue
    .line 285
    new-instance v0, Ljava/io/File;

    iget-object v2, p0, Lcom/idelan/app/Update/UpdateManager;->mSavePath:Ljava/lang/String;

    iget-object v3, p0, Lcom/idelan/app/Update/UpdateManager;->mContext:Landroid/content/Context;

    invoke-static {v3}, Lcom/idelan/app/Util/AppUtil;->getAppName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 286
    .local v0, "apkfile":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_14

    .line 295
    :goto_13
    return-void

    .line 290
    :cond_14
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.VIEW"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 291
    .local v1, "i":Landroid/content/Intent;
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "file://"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    .line 292
    const-string v3, "application/vnd.android.package-archive"

    .line 291
    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    .line 293
    const/high16 v2, 0x10000000

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 294
    iget-object v2, p0, Lcom/idelan/app/Update/UpdateManager;->mContext:Landroid/content/Context;

    invoke-virtual {v2, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto :goto_13
.end method

.method private isUpdate(I)Z
    .registers 4
    .param p1, "versionCode"    # I

    .prologue
    .line 116
    iget-object v1, p0, Lcom/idelan/app/Update/UpdateManager;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/idelan/app/Util/AppUtil;->getVersionCode(Landroid/content/Context;)I

    move-result v0

    .line 118
    .local v0, "Code":I
    if-le p1, v0, :cond_a

    .line 119
    const/4 v1, 0x1

    .line 121
    :goto_9
    return v1

    :cond_a
    const/4 v1, 0x0

    goto :goto_9
.end method

.method private showDownloadDialog()V
    .registers 6

    .prologue
    .line 174
    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v3, p0, Lcom/idelan/app/Update/UpdateManager;->mContext:Landroid/content/Context;

    invoke-direct {v0, v3}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 175
    .local v0, "builder":Landroid/app/AlertDialog$Builder;
    iget-object v3, p0, Lcom/idelan/app/Update/UpdateManager;->mContext:Landroid/content/Context;

    const-string v4, "soft_updating"

    invoke-static {v3, v4}, Lcom/idelan/app/Util/ResourceUtil;->getStringId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v0, v3}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 177
    iget-object v3, p0, Lcom/idelan/app/Update/UpdateManager;->mContext:Landroid/content/Context;

    invoke-static {v3}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    .line 179
    .local v1, "inflater":Landroid/view/LayoutInflater;
    iget-object v3, p0, Lcom/idelan/app/Update/UpdateManager;->mContext:Landroid/content/Context;

    .line 180
    const-string v4, "softupdate_progress"

    .line 179
    invoke-static {v3, v4}, Lcom/idelan/app/Util/ResourceUtil;->getLayoutId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v3

    .line 180
    const/4 v4, 0x0

    .line 179
    invoke-virtual {v1, v3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    .line 181
    .local v2, "v":Landroid/view/View;
    iget-object v3, p0, Lcom/idelan/app/Update/UpdateManager;->mContext:Landroid/content/Context;

    .line 182
    const-string v4, "update_progress"

    .line 181
    invoke-static {v3, v4}, Lcom/idelan/app/Util/ResourceUtil;->getId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ProgressBar;

    iput-object v3, p0, Lcom/idelan/app/Update/UpdateManager;->mProgress:Landroid/widget/ProgressBar;

    .line 183
    iget-object v3, p0, Lcom/idelan/app/Update/UpdateManager;->mContext:Landroid/content/Context;

    .line 184
    const-string v4, "update_text"

    .line 183
    invoke-static {v3, v4}, Lcom/idelan/app/Util/ResourceUtil;->getId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, p0, Lcom/idelan/app/Update/UpdateManager;->progressTV:Landroid/widget/TextView;

    .line 185
    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    .line 188
    iget-object v3, p0, Lcom/idelan/app/Update/UpdateManager;->mContext:Landroid/content/Context;

    const-string v4, "soft_update_cancel"

    invoke-static {v3, v4}, Lcom/idelan/app/Util/ResourceUtil;->getStringId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v3

    .line 189
    new-instance v4, Lcom/idelan/app/Update/UpdateManager$4;

    invoke-direct {v4, p0}, Lcom/idelan/app/Update/UpdateManager$4;-><init>(Lcom/idelan/app/Update/UpdateManager;)V

    .line 187
    invoke-virtual {v0, v3, v4}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 198
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v3

    iput-object v3, p0, Lcom/idelan/app/Update/UpdateManager;->mDownloadDialog:Landroid/app/Dialog;

    .line 199
    iget-object v3, p0, Lcom/idelan/app/Update/UpdateManager;->mDownloadDialog:Landroid/app/Dialog;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/app/Dialog;->setCancelable(Z)V

    .line 200
    iget-object v3, p0, Lcom/idelan/app/Update/UpdateManager;->mDownloadDialog:Landroid/app/Dialog;

    invoke-virtual {v3}, Landroid/app/Dialog;->show()V

    .line 202
    invoke-direct {p0}, Lcom/idelan/app/Update/UpdateManager;->downloadApk()V

    .line 203
    return-void
.end method

.method private showNoticeDialog()V
    .registers 5

    .prologue
    .line 129
    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v2, p0, Lcom/idelan/app/Update/UpdateManager;->mContext:Landroid/content/Context;

    invoke-direct {v0, v2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 131
    .local v0, "builder":Landroid/app/AlertDialog$Builder;
    iget-object v2, p0, Lcom/idelan/app/Update/UpdateManager;->mContext:Landroid/content/Context;

    const-string v3, "soft_update_title"

    invoke-static {v2, v3}, Lcom/idelan/app/Util/ResourceUtil;->getStringId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v2

    .line 130
    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 132
    iget-object v2, p0, Lcom/idelan/app/Update/UpdateManager;->mContext:Landroid/content/Context;

    .line 133
    const-string v3, "soft_update_info"

    .line 132
    invoke-static {v2, v3}, Lcom/idelan/app/Util/ResourceUtil;->getStringId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    .line 136
    iget-object v2, p0, Lcom/idelan/app/Update/UpdateManager;->mContext:Landroid/content/Context;

    const-string v3, "soft_update_updatebtn"

    invoke-static {v2, v3}, Lcom/idelan/app/Util/ResourceUtil;->getStringId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v2

    .line 137
    new-instance v3, Lcom/idelan/app/Update/UpdateManager$2;

    invoke-direct {v3, p0}, Lcom/idelan/app/Update/UpdateManager$2;-><init>(Lcom/idelan/app/Update/UpdateManager;)V

    .line 135
    invoke-virtual {v0, v2, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 157
    iget-object v2, p0, Lcom/idelan/app/Update/UpdateManager;->mContext:Landroid/content/Context;

    const-string v3, "soft_update_later"

    invoke-static {v2, v3}, Lcom/idelan/app/Util/ResourceUtil;->getStringId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v2

    .line 158
    new-instance v3, Lcom/idelan/app/Update/UpdateManager$3;

    invoke-direct {v3, p0}, Lcom/idelan/app/Update/UpdateManager$3;-><init>(Lcom/idelan/app/Update/UpdateManager;)V

    .line 156
    invoke-virtual {v0, v2, v3}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 165
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    .line 166
    .local v1, "noticeDialog":Landroid/app/Dialog;
    invoke-virtual {v1}, Landroid/app/Dialog;->show()V

    .line 167
    return-void
.end method


# virtual methods
.method public checkUpdate(IILjava/lang/String;Lcom/idelan/app/Update/UpdateListener;)V
    .registers 6
    .param p1, "iconId"    # I
    .param p2, "versionCode"    # I
    .param p3, "url"    # Ljava/lang/String;
    .param p4, "lis"    # Lcom/idelan/app/Update/UpdateListener;

    .prologue
    .line 98
    sput p1, Lcom/idelan/app/Update/UpdateService;->ICON_ID:I

    .line 99
    iput-object p3, p0, Lcom/idelan/app/Update/UpdateManager;->downUrl:Ljava/lang/String;

    .line 100
    sput-object p4, Lcom/idelan/app/Update/UpdateManager;->listener:Lcom/idelan/app/Update/UpdateListener;

    .line 101
    invoke-direct {p0, p2}, Lcom/idelan/app/Update/UpdateManager;->isUpdate(I)Z

    move-result v0

    if-eqz v0, :cond_10

    .line 103
    invoke-direct {p0}, Lcom/idelan/app/Update/UpdateManager;->showNoticeDialog()V

    .line 107
    :goto_f
    return-void

    .line 105
    :cond_10
    sget-object v0, Lcom/idelan/app/Update/UpdateManager;->listener:Lcom/idelan/app/Update/UpdateListener;

    invoke-interface {v0}, Lcom/idelan/app/Update/UpdateListener;->noUpdate()V

    goto :goto_f
.end method

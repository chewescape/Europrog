.class Lcom/delan/app/germanybluetooth/bluetooth/VersionListActivity$1;
.super Lutils/DialogUtils$DialogCallBack;
.source "VersionListActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/delan/app/germanybluetooth/bluetooth/VersionListActivity;->onStart()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/delan/app/germanybluetooth/bluetooth/VersionListActivity;


# direct methods
.method constructor <init>(Lcom/delan/app/germanybluetooth/bluetooth/VersionListActivity;)V
    .registers 2
    .param p1, "this$0"    # Lcom/delan/app/germanybluetooth/bluetooth/VersionListActivity;

    .prologue
    .line 108
    iput-object p1, p0, Lcom/delan/app/germanybluetooth/bluetooth/VersionListActivity$1;->this$0:Lcom/delan/app/germanybluetooth/bluetooth/VersionListActivity;

    invoke-direct {p0}, Lutils/DialogUtils$DialogCallBack;-><init>()V

    return-void
.end method


# virtual methods
.method public onNegativeButton(Ljava/lang/Object;)V
    .registers 3
    .param p1, "o"    # Ljava/lang/Object;

    .prologue
    .line 117
    invoke-super {p0, p1}, Lutils/DialogUtils$DialogCallBack;->onNegativeButton(Ljava/lang/Object;)V

    .line 118
    iget-object v0, p0, Lcom/delan/app/germanybluetooth/bluetooth/VersionListActivity$1;->this$0:Lcom/delan/app/germanybluetooth/bluetooth/VersionListActivity;

    invoke-virtual {v0}, Lcom/delan/app/germanybluetooth/bluetooth/VersionListActivity;->finish()V

    .line 119
    return-void
.end method

.method public onPositiveButton(Ljava/lang/Object;)V
    .registers 5
    .param p1, "o"    # Ljava/lang/Object;

    .prologue
    .line 111
    invoke-super {p0, p1}, Lutils/DialogUtils$DialogCallBack;->onPositiveButton(Ljava/lang/Object;)V

    .line 112
    iget-object v0, p0, Lcom/delan/app/germanybluetooth/bluetooth/VersionListActivity$1;->this$0:Lcom/delan/app/germanybluetooth/bluetooth/VersionListActivity;

    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.settings.WIRELESS_SETTINGS"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/delan/app/germanybluetooth/bluetooth/VersionListActivity;->startActivity(Landroid/content/Intent;)V

    .line 113
    return-void
.end method

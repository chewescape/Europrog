.class Lcom/delan/app/germanybluetooth/bluetooth/MainActivity$1;
.super Ljava/lang/Object;
.source "MainActivity.java"

# interfaces
.implements Lcom/delan/app/germanybluetooth/adapter/RoomAdapter$OnRightMenuListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/delan/app/germanybluetooth/bluetooth/MainActivity;->fillView()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/delan/app/germanybluetooth/bluetooth/MainActivity;


# direct methods
.method constructor <init>(Lcom/delan/app/germanybluetooth/bluetooth/MainActivity;)V
    .registers 2
    .param p1, "this$0"    # Lcom/delan/app/germanybluetooth/bluetooth/MainActivity;

    .prologue
    .line 85
    iput-object p1, p0, Lcom/delan/app/germanybluetooth/bluetooth/MainActivity$1;->this$0:Lcom/delan/app/germanybluetooth/bluetooth/MainActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onRightMenuListener(II)V
    .registers 7
    .param p1, "index"    # I
    .param p2, "position"    # I

    .prologue
    .line 88
    iget-object v0, p0, Lcom/delan/app/germanybluetooth/bluetooth/MainActivity$1;->this$0:Lcom/delan/app/germanybluetooth/bluetooth/MainActivity;

    invoke-static {v0}, Lcom/delan/app/germanybluetooth/bluetooth/MainActivity;->access$000(Lcom/delan/app/germanybluetooth/bluetooth/MainActivity;)Lcom/delan/app/germanybluetooth/adapter/RoomAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/delan/app/germanybluetooth/adapter/RoomAdapter;->closeMenu()V

    .line 89
    packed-switch p1, :pswitch_data_50

    .line 121
    :cond_c
    :goto_c
    return-void

    .line 91
    :pswitch_d
    iget-object v0, p0, Lcom/delan/app/germanybluetooth/bluetooth/MainActivity$1;->this$0:Lcom/delan/app/germanybluetooth/bluetooth/MainActivity;

    invoke-virtual {v0}, Lcom/delan/app/germanybluetooth/bluetooth/MainActivity;->hasDialogShowing()Z

    move-result v0

    if-nez v0, :cond_c

    .line 93
    iget-object v0, p0, Lcom/delan/app/germanybluetooth/bluetooth/MainActivity$1;->this$0:Lcom/delan/app/germanybluetooth/bluetooth/MainActivity;

    iget-object v1, p0, Lcom/delan/app/germanybluetooth/bluetooth/MainActivity$1;->this$0:Lcom/delan/app/germanybluetooth/bluetooth/MainActivity;

    iget-object v2, p0, Lcom/delan/app/germanybluetooth/bluetooth/MainActivity$1;->this$0:Lcom/delan/app/germanybluetooth/bluetooth/MainActivity;

    const v3, 0x7f06005f

    invoke-virtual {v2, v3}, Lcom/delan/app/germanybluetooth/bluetooth/MainActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Lcom/delan/app/germanybluetooth/bluetooth/MainActivity$1$1;

    invoke-direct {v3, p0, p2}, Lcom/delan/app/germanybluetooth/bluetooth/MainActivity$1$1;-><init>(Lcom/delan/app/germanybluetooth/bluetooth/MainActivity$1;I)V

    invoke-static {v1, v2, v3}, Lutils/DialogUtils;->showInputRoomDialog(Landroid/app/Activity;Ljava/lang/String;Lutils/DialogUtils$DialogCallBack;)Landroid/app/Dialog;

    move-result-object v1

    iput-object v1, v0, Lcom/delan/app/germanybluetooth/bluetooth/MainActivity;->dialog:Landroid/app/Dialog;

    goto :goto_c

    .line 109
    :pswitch_2e
    iget-object v0, p0, Lcom/delan/app/germanybluetooth/bluetooth/MainActivity$1;->this$0:Lcom/delan/app/germanybluetooth/bluetooth/MainActivity;

    invoke-virtual {v0}, Lcom/delan/app/germanybluetooth/bluetooth/MainActivity;->hasDialogShowing()Z

    move-result v0

    if-nez v0, :cond_c

    .line 111
    iget-object v0, p0, Lcom/delan/app/germanybluetooth/bluetooth/MainActivity$1;->this$0:Lcom/delan/app/germanybluetooth/bluetooth/MainActivity;

    iget-object v1, p0, Lcom/delan/app/germanybluetooth/bluetooth/MainActivity$1;->this$0:Lcom/delan/app/germanybluetooth/bluetooth/MainActivity;

    const v2, 0x7f06003d

    invoke-virtual {v1, v2}, Lcom/delan/app/germanybluetooth/bluetooth/MainActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/delan/app/germanybluetooth/bluetooth/MainActivity$1;->this$0:Lcom/delan/app/germanybluetooth/bluetooth/MainActivity;

    new-instance v3, Lcom/delan/app/germanybluetooth/bluetooth/MainActivity$1$2;

    invoke-direct {v3, p0, p2}, Lcom/delan/app/germanybluetooth/bluetooth/MainActivity$1$2;-><init>(Lcom/delan/app/germanybluetooth/bluetooth/MainActivity$1;I)V

    invoke-static {v1, v2, v3}, Lutils/DialogUtils;->confirmDialog(Ljava/lang/String;Landroid/content/Context;Lutils/DialogUtils$DialogCallBack;)Landroid/app/Dialog;

    move-result-object v1

    iput-object v1, v0, Lcom/delan/app/germanybluetooth/bluetooth/MainActivity;->dialog:Landroid/app/Dialog;

    goto :goto_c

    .line 89
    nop

    :pswitch_data_50
    .packed-switch 0x1
        :pswitch_d
        :pswitch_2e
    .end packed-switch
.end method

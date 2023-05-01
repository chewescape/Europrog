.class public Lcom/delan/app/germanybluetooth/adapter/SelectRoomDialogAdapter$ViewHolder;
.super Ljava/lang/Object;
.source "SelectRoomDialogAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/delan/app/germanybluetooth/adapter/SelectRoomDialogAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4
    name = "ViewHolder"
.end annotation


# instance fields
.field protected checkedCb:Landroid/widget/CheckBox;

.field protected roomTv:Landroid/widget/TextView;

.field final synthetic this$0:Lcom/delan/app/germanybluetooth/adapter/SelectRoomDialogAdapter;


# direct methods
.method public constructor <init>(Lcom/delan/app/germanybluetooth/adapter/SelectRoomDialogAdapter;Landroid/view/View;)V
    .registers 5
    .param p1, "this$0"    # Lcom/delan/app/germanybluetooth/adapter/SelectRoomDialogAdapter;
    .param p2, "view"    # Landroid/view/View;

    .prologue
    .line 73
    iput-object p1, p0, Lcom/delan/app/germanybluetooth/adapter/SelectRoomDialogAdapter$ViewHolder;->this$0:Lcom/delan/app/germanybluetooth/adapter/SelectRoomDialogAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 74
    const v0, 0x7f0d007f

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/delan/app/germanybluetooth/adapter/SelectRoomDialogAdapter$ViewHolder;->roomTv:Landroid/widget/TextView;

    .line 75
    const v0, 0x7f0d00aa

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    iput-object v0, p0, Lcom/delan/app/germanybluetooth/adapter/SelectRoomDialogAdapter$ViewHolder;->checkedCb:Landroid/widget/CheckBox;

    .line 76
    const v0, 0x7f0d00ab

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 77
    return-void
.end method

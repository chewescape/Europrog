.class Lcom/delan/app/germanybluetooth/adapter/DeviceDetailAdapter$2;
.super Ljava/lang/Object;
.source "DeviceDetailAdapter.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/delan/app/germanybluetooth/adapter/DeviceDetailAdapter;->fillValues(ILandroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/delan/app/germanybluetooth/adapter/DeviceDetailAdapter;

.field final synthetic val$holder:Lcom/delan/app/germanybluetooth/adapter/DeviceDetailAdapter$ViewHolder;

.field final synthetic val$position:I


# direct methods
.method constructor <init>(Lcom/delan/app/germanybluetooth/adapter/DeviceDetailAdapter;Lcom/delan/app/germanybluetooth/adapter/DeviceDetailAdapter$ViewHolder;I)V
    .registers 4
    .param p1, "this$0"    # Lcom/delan/app/germanybluetooth/adapter/DeviceDetailAdapter;

    .prologue
    .line 112
    iput-object p1, p0, Lcom/delan/app/germanybluetooth/adapter/DeviceDetailAdapter$2;->this$0:Lcom/delan/app/germanybluetooth/adapter/DeviceDetailAdapter;

    iput-object p2, p0, Lcom/delan/app/germanybluetooth/adapter/DeviceDetailAdapter$2;->val$holder:Lcom/delan/app/germanybluetooth/adapter/DeviceDetailAdapter$ViewHolder;

    iput p3, p0, Lcom/delan/app/germanybluetooth/adapter/DeviceDetailAdapter$2;->val$position:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 5
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 115
    iget-object v0, p0, Lcom/delan/app/germanybluetooth/adapter/DeviceDetailAdapter$2;->val$holder:Lcom/delan/app/germanybluetooth/adapter/DeviceDetailAdapter$ViewHolder;

    iget-object v0, v0, Lcom/delan/app/germanybluetooth/adapter/DeviceDetailAdapter$ViewHolder;->swipe:Lcom/delan/app/germanybluetooth/widget/swip/SwipeLayout;

    invoke-virtual {v0}, Lcom/delan/app/germanybluetooth/widget/swip/SwipeLayout;->close()V

    .line 116
    iget-object v0, p0, Lcom/delan/app/germanybluetooth/adapter/DeviceDetailAdapter$2;->this$0:Lcom/delan/app/germanybluetooth/adapter/DeviceDetailAdapter;

    invoke-static {v0}, Lcom/delan/app/germanybluetooth/adapter/DeviceDetailAdapter;->access$000(Lcom/delan/app/germanybluetooth/adapter/DeviceDetailAdapter;)Lcom/delan/app/germanybluetooth/adapter/DeviceDetailAdapter$onRightMenuListener;

    move-result-object v0

    if-eqz v0, :cond_2a

    .line 117
    iget-object v0, p0, Lcom/delan/app/germanybluetooth/adapter/DeviceDetailAdapter$2;->this$0:Lcom/delan/app/germanybluetooth/adapter/DeviceDetailAdapter;

    invoke-static {v0}, Lcom/delan/app/germanybluetooth/adapter/DeviceDetailAdapter;->access$000(Lcom/delan/app/germanybluetooth/adapter/DeviceDetailAdapter;)Lcom/delan/app/germanybluetooth/adapter/DeviceDetailAdapter$onRightMenuListener;

    move-result-object v0

    iget-object v1, p0, Lcom/delan/app/germanybluetooth/adapter/DeviceDetailAdapter$2;->val$holder:Lcom/delan/app/germanybluetooth/adapter/DeviceDetailAdapter$ViewHolder;

    iget-object v1, v1, Lcom/delan/app/germanybluetooth/adapter/DeviceDetailAdapter$ViewHolder;->deleteLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {v1}, Landroid/widget/RelativeLayout;->getTag()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    iget v2, p0, Lcom/delan/app/germanybluetooth/adapter/DeviceDetailAdapter$2;->val$position:I

    invoke-interface {v0, v1, v2}, Lcom/delan/app/germanybluetooth/adapter/DeviceDetailAdapter$onRightMenuListener;->onRightMenuClicked(II)V

    .line 119
    :cond_2a
    return-void
.end method

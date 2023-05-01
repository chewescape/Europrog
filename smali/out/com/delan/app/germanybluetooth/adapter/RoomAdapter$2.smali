.class Lcom/delan/app/germanybluetooth/adapter/RoomAdapter$2;
.super Ljava/lang/Object;
.source "RoomAdapter.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/delan/app/germanybluetooth/adapter/RoomAdapter;->fillValues(ILandroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/delan/app/germanybluetooth/adapter/RoomAdapter;

.field final synthetic val$holder:Lcom/delan/app/germanybluetooth/adapter/RoomAdapter$ViewHolder;

.field final synthetic val$position:I


# direct methods
.method constructor <init>(Lcom/delan/app/germanybluetooth/adapter/RoomAdapter;Lcom/delan/app/germanybluetooth/adapter/RoomAdapter$ViewHolder;I)V
    .registers 4
    .param p1, "this$0"    # Lcom/delan/app/germanybluetooth/adapter/RoomAdapter;

    .prologue
    .line 97
    iput-object p1, p0, Lcom/delan/app/germanybluetooth/adapter/RoomAdapter$2;->this$0:Lcom/delan/app/germanybluetooth/adapter/RoomAdapter;

    iput-object p2, p0, Lcom/delan/app/germanybluetooth/adapter/RoomAdapter$2;->val$holder:Lcom/delan/app/germanybluetooth/adapter/RoomAdapter$ViewHolder;

    iput p3, p0, Lcom/delan/app/germanybluetooth/adapter/RoomAdapter$2;->val$position:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 5
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 100
    iget-object v0, p0, Lcom/delan/app/germanybluetooth/adapter/RoomAdapter$2;->val$holder:Lcom/delan/app/germanybluetooth/adapter/RoomAdapter$ViewHolder;

    invoke-static {v0}, Lcom/delan/app/germanybluetooth/adapter/RoomAdapter$ViewHolder;->access$100(Lcom/delan/app/germanybluetooth/adapter/RoomAdapter$ViewHolder;)Lcom/delan/app/germanybluetooth/widget/swip/SwipeLayout;

    move-result-object v0

    invoke-virtual {v0}, Lcom/delan/app/germanybluetooth/widget/swip/SwipeLayout;->close()V

    .line 101
    iget-object v0, p0, Lcom/delan/app/germanybluetooth/adapter/RoomAdapter$2;->this$0:Lcom/delan/app/germanybluetooth/adapter/RoomAdapter;

    invoke-static {v0}, Lcom/delan/app/germanybluetooth/adapter/RoomAdapter;->access$200(Lcom/delan/app/germanybluetooth/adapter/RoomAdapter;)Lcom/delan/app/germanybluetooth/adapter/RoomAdapter$OnRightMenuListener;

    move-result-object v0

    if-eqz v0, :cond_2e

    .line 102
    iget-object v0, p0, Lcom/delan/app/germanybluetooth/adapter/RoomAdapter$2;->this$0:Lcom/delan/app/germanybluetooth/adapter/RoomAdapter;

    invoke-static {v0}, Lcom/delan/app/germanybluetooth/adapter/RoomAdapter;->access$200(Lcom/delan/app/germanybluetooth/adapter/RoomAdapter;)Lcom/delan/app/germanybluetooth/adapter/RoomAdapter$OnRightMenuListener;

    move-result-object v0

    iget-object v1, p0, Lcom/delan/app/germanybluetooth/adapter/RoomAdapter$2;->val$holder:Lcom/delan/app/germanybluetooth/adapter/RoomAdapter$ViewHolder;

    invoke-static {v1}, Lcom/delan/app/germanybluetooth/adapter/RoomAdapter$ViewHolder;->access$400(Lcom/delan/app/germanybluetooth/adapter/RoomAdapter$ViewHolder;)Landroid/widget/RelativeLayout;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/RelativeLayout;->getTag()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    iget v2, p0, Lcom/delan/app/germanybluetooth/adapter/RoomAdapter$2;->val$position:I

    invoke-interface {v0, v1, v2}, Lcom/delan/app/germanybluetooth/adapter/RoomAdapter$OnRightMenuListener;->onRightMenuListener(II)V

    .line 104
    :cond_2e
    return-void
.end method

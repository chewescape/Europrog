.class Lcom/delan/app/germanybluetooth/adapter/ProgmaticDevicesAdapter$2;
.super Ljava/lang/Object;
.source "ProgmaticDevicesAdapter.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/delan/app/germanybluetooth/adapter/ProgmaticDevicesAdapter;->fillValues(ILandroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/delan/app/germanybluetooth/adapter/ProgmaticDevicesAdapter;

.field final synthetic val$holder:Lcom/delan/app/germanybluetooth/adapter/ProgmaticDevicesAdapter$ViewHolder;

.field final synthetic val$position:I


# direct methods
.method constructor <init>(Lcom/delan/app/germanybluetooth/adapter/ProgmaticDevicesAdapter;Lcom/delan/app/germanybluetooth/adapter/ProgmaticDevicesAdapter$ViewHolder;I)V
    .registers 4
    .param p1, "this$0"    # Lcom/delan/app/germanybluetooth/adapter/ProgmaticDevicesAdapter;

    .prologue
    .line 107
    iput-object p1, p0, Lcom/delan/app/germanybluetooth/adapter/ProgmaticDevicesAdapter$2;->this$0:Lcom/delan/app/germanybluetooth/adapter/ProgmaticDevicesAdapter;

    iput-object p2, p0, Lcom/delan/app/germanybluetooth/adapter/ProgmaticDevicesAdapter$2;->val$holder:Lcom/delan/app/germanybluetooth/adapter/ProgmaticDevicesAdapter$ViewHolder;

    iput p3, p0, Lcom/delan/app/germanybluetooth/adapter/ProgmaticDevicesAdapter$2;->val$position:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 5
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 110
    iget-object v0, p0, Lcom/delan/app/germanybluetooth/adapter/ProgmaticDevicesAdapter$2;->val$holder:Lcom/delan/app/germanybluetooth/adapter/ProgmaticDevicesAdapter$ViewHolder;

    invoke-static {v0}, Lcom/delan/app/germanybluetooth/adapter/ProgmaticDevicesAdapter$ViewHolder;->access$200(Lcom/delan/app/germanybluetooth/adapter/ProgmaticDevicesAdapter$ViewHolder;)Lcom/delan/app/germanybluetooth/widget/swip/SwipeLayout;

    move-result-object v0

    invoke-virtual {v0}, Lcom/delan/app/germanybluetooth/widget/swip/SwipeLayout;->close()V

    .line 111
    iget-object v0, p0, Lcom/delan/app/germanybluetooth/adapter/ProgmaticDevicesAdapter$2;->this$0:Lcom/delan/app/germanybluetooth/adapter/ProgmaticDevicesAdapter;

    invoke-static {v0}, Lcom/delan/app/germanybluetooth/adapter/ProgmaticDevicesAdapter;->access$300(Lcom/delan/app/germanybluetooth/adapter/ProgmaticDevicesAdapter;)Lcom/delan/app/germanybluetooth/adapter/ProgmaticDevicesAdapter$onRightMenuListener;

    move-result-object v0

    if-eqz v0, :cond_2e

    .line 112
    iget-object v0, p0, Lcom/delan/app/germanybluetooth/adapter/ProgmaticDevicesAdapter$2;->this$0:Lcom/delan/app/germanybluetooth/adapter/ProgmaticDevicesAdapter;

    invoke-static {v0}, Lcom/delan/app/germanybluetooth/adapter/ProgmaticDevicesAdapter;->access$300(Lcom/delan/app/germanybluetooth/adapter/ProgmaticDevicesAdapter;)Lcom/delan/app/germanybluetooth/adapter/ProgmaticDevicesAdapter$onRightMenuListener;

    move-result-object v0

    iget-object v1, p0, Lcom/delan/app/germanybluetooth/adapter/ProgmaticDevicesAdapter$2;->val$holder:Lcom/delan/app/germanybluetooth/adapter/ProgmaticDevicesAdapter$ViewHolder;

    invoke-static {v1}, Lcom/delan/app/germanybluetooth/adapter/ProgmaticDevicesAdapter$ViewHolder;->access$500(Lcom/delan/app/germanybluetooth/adapter/ProgmaticDevicesAdapter$ViewHolder;)Landroid/widget/RelativeLayout;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/RelativeLayout;->getTag()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    iget v2, p0, Lcom/delan/app/germanybluetooth/adapter/ProgmaticDevicesAdapter$2;->val$position:I

    invoke-interface {v0, v1, v2}, Lcom/delan/app/germanybluetooth/adapter/ProgmaticDevicesAdapter$onRightMenuListener;->onRightMenuListener(II)V

    .line 114
    :cond_2e
    return-void
.end method

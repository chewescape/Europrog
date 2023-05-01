.class Lcom/delan/app/germanybluetooth/adapter/DeviceDetailAdapter$ViewHolder$1;
.super Ljava/lang/Object;
.source "DeviceDetailAdapter.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/delan/app/germanybluetooth/adapter/DeviceDetailAdapter$ViewHolder;-><init>(Lcom/delan/app/germanybluetooth/adapter/DeviceDetailAdapter;Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/delan/app/germanybluetooth/adapter/DeviceDetailAdapter$ViewHolder;

.field final synthetic val$this$0:Lcom/delan/app/germanybluetooth/adapter/DeviceDetailAdapter;


# direct methods
.method constructor <init>(Lcom/delan/app/germanybluetooth/adapter/DeviceDetailAdapter$ViewHolder;Lcom/delan/app/germanybluetooth/adapter/DeviceDetailAdapter;)V
    .registers 3
    .param p1, "this$1"    # Lcom/delan/app/germanybluetooth/adapter/DeviceDetailAdapter$ViewHolder;

    .prologue
    .line 199
    iput-object p1, p0, Lcom/delan/app/germanybluetooth/adapter/DeviceDetailAdapter$ViewHolder$1;->this$1:Lcom/delan/app/germanybluetooth/adapter/DeviceDetailAdapter$ViewHolder;

    iput-object p2, p0, Lcom/delan/app/germanybluetooth/adapter/DeviceDetailAdapter$ViewHolder$1;->val$this$0:Lcom/delan/app/germanybluetooth/adapter/DeviceDetailAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 4
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 202
    iget-object v0, p0, Lcom/delan/app/germanybluetooth/adapter/DeviceDetailAdapter$ViewHolder$1;->this$1:Lcom/delan/app/germanybluetooth/adapter/DeviceDetailAdapter$ViewHolder;

    iget-object v0, v0, Lcom/delan/app/germanybluetooth/adapter/DeviceDetailAdapter$ViewHolder;->this$0:Lcom/delan/app/germanybluetooth/adapter/DeviceDetailAdapter;

    invoke-static {v0}, Lcom/delan/app/germanybluetooth/adapter/DeviceDetailAdapter;->access$300(Lcom/delan/app/germanybluetooth/adapter/DeviceDetailAdapter;)Lcom/delan/app/germanybluetooth/adapter/DeviceDetailAdapter$WidgetClickListener;

    move-result-object v0

    if-eqz v0, :cond_19

    .line 203
    iget-object v0, p0, Lcom/delan/app/germanybluetooth/adapter/DeviceDetailAdapter$ViewHolder$1;->this$1:Lcom/delan/app/germanybluetooth/adapter/DeviceDetailAdapter$ViewHolder;

    iget-object v0, v0, Lcom/delan/app/germanybluetooth/adapter/DeviceDetailAdapter$ViewHolder;->this$0:Lcom/delan/app/germanybluetooth/adapter/DeviceDetailAdapter;

    invoke-static {v0}, Lcom/delan/app/germanybluetooth/adapter/DeviceDetailAdapter;->access$300(Lcom/delan/app/germanybluetooth/adapter/DeviceDetailAdapter;)Lcom/delan/app/germanybluetooth/adapter/DeviceDetailAdapter$WidgetClickListener;

    move-result-object v0

    iget-object v1, p0, Lcom/delan/app/germanybluetooth/adapter/DeviceDetailAdapter$ViewHolder$1;->this$1:Lcom/delan/app/germanybluetooth/adapter/DeviceDetailAdapter$ViewHolder;

    iget v1, v1, Lcom/delan/app/germanybluetooth/adapter/DeviceDetailAdapter$ViewHolder;->position:I

    invoke-interface {v0, v1}, Lcom/delan/app/germanybluetooth/adapter/DeviceDetailAdapter$WidgetClickListener;->onClockClicked(I)V

    .line 204
    :cond_19
    return-void
.end method

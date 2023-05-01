.class Lcom/delan/app/germanybluetooth/adapter/ProgmaticSwitchPointAdapter$ViewHolder$4;
.super Ljava/lang/Object;
.source "ProgmaticSwitchPointAdapter.java"

# interfaces
.implements Lcom/delan/app/germanybluetooth/bluetooth/MyTextView$OnLongUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/delan/app/germanybluetooth/adapter/ProgmaticSwitchPointAdapter$ViewHolder;-><init>(Lcom/delan/app/germanybluetooth/adapter/ProgmaticSwitchPointAdapter;Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/delan/app/germanybluetooth/adapter/ProgmaticSwitchPointAdapter$ViewHolder;

.field final synthetic val$this$0:Lcom/delan/app/germanybluetooth/adapter/ProgmaticSwitchPointAdapter;


# direct methods
.method constructor <init>(Lcom/delan/app/germanybluetooth/adapter/ProgmaticSwitchPointAdapter$ViewHolder;Lcom/delan/app/germanybluetooth/adapter/ProgmaticSwitchPointAdapter;)V
    .registers 3
    .param p1, "this$1"    # Lcom/delan/app/germanybluetooth/adapter/ProgmaticSwitchPointAdapter$ViewHolder;

    .prologue
    .line 283
    iput-object p1, p0, Lcom/delan/app/germanybluetooth/adapter/ProgmaticSwitchPointAdapter$ViewHolder$4;->this$1:Lcom/delan/app/germanybluetooth/adapter/ProgmaticSwitchPointAdapter$ViewHolder;

    iput-object p2, p0, Lcom/delan/app/germanybluetooth/adapter/ProgmaticSwitchPointAdapter$ViewHolder$4;->val$this$0:Lcom/delan/app/germanybluetooth/adapter/ProgmaticSwitchPointAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onLongUpdate()V
    .registers 3

    .prologue
    .line 286
    iget-object v0, p0, Lcom/delan/app/germanybluetooth/adapter/ProgmaticSwitchPointAdapter$ViewHolder$4;->this$1:Lcom/delan/app/germanybluetooth/adapter/ProgmaticSwitchPointAdapter$ViewHolder;

    iget-object v0, v0, Lcom/delan/app/germanybluetooth/adapter/ProgmaticSwitchPointAdapter$ViewHolder;->this$0:Lcom/delan/app/germanybluetooth/adapter/ProgmaticSwitchPointAdapter;

    invoke-static {v0}, Lcom/delan/app/germanybluetooth/adapter/ProgmaticSwitchPointAdapter;->access$2200(Lcom/delan/app/germanybluetooth/adapter/ProgmaticSwitchPointAdapter;)Landroid/app/Activity;

    move-result-object v0

    new-instance v1, Lcom/delan/app/germanybluetooth/adapter/ProgmaticSwitchPointAdapter$ViewHolder$4$1;

    invoke-direct {v1, p0}, Lcom/delan/app/germanybluetooth/adapter/ProgmaticSwitchPointAdapter$ViewHolder$4$1;-><init>(Lcom/delan/app/germanybluetooth/adapter/ProgmaticSwitchPointAdapter$ViewHolder$4;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 300
    return-void
.end method

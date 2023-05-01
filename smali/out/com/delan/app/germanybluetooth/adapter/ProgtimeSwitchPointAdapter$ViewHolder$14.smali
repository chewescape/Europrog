.class Lcom/delan/app/germanybluetooth/adapter/ProgtimeSwitchPointAdapter$ViewHolder$14;
.super Ljava/lang/Object;
.source "ProgtimeSwitchPointAdapter.java"

# interfaces
.implements Lcom/delan/app/germanybluetooth/bluetooth/MyTextView$OnLongUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/delan/app/germanybluetooth/adapter/ProgtimeSwitchPointAdapter$ViewHolder;-><init>(Lcom/delan/app/germanybluetooth/adapter/ProgtimeSwitchPointAdapter;Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/delan/app/germanybluetooth/adapter/ProgtimeSwitchPointAdapter$ViewHolder;

.field final synthetic val$this$0:Lcom/delan/app/germanybluetooth/adapter/ProgtimeSwitchPointAdapter;


# direct methods
.method constructor <init>(Lcom/delan/app/germanybluetooth/adapter/ProgtimeSwitchPointAdapter$ViewHolder;Lcom/delan/app/germanybluetooth/adapter/ProgtimeSwitchPointAdapter;)V
    .registers 3
    .param p1, "this$1"    # Lcom/delan/app/germanybluetooth/adapter/ProgtimeSwitchPointAdapter$ViewHolder;

    .prologue
    .line 513
    iput-object p1, p0, Lcom/delan/app/germanybluetooth/adapter/ProgtimeSwitchPointAdapter$ViewHolder$14;->this$1:Lcom/delan/app/germanybluetooth/adapter/ProgtimeSwitchPointAdapter$ViewHolder;

    iput-object p2, p0, Lcom/delan/app/germanybluetooth/adapter/ProgtimeSwitchPointAdapter$ViewHolder$14;->val$this$0:Lcom/delan/app/germanybluetooth/adapter/ProgtimeSwitchPointAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onLongUpdate()V
    .registers 3

    .prologue
    .line 516
    iget-object v0, p0, Lcom/delan/app/germanybluetooth/adapter/ProgtimeSwitchPointAdapter$ViewHolder$14;->this$1:Lcom/delan/app/germanybluetooth/adapter/ProgtimeSwitchPointAdapter$ViewHolder;

    iget-object v0, v0, Lcom/delan/app/germanybluetooth/adapter/ProgtimeSwitchPointAdapter$ViewHolder;->this$0:Lcom/delan/app/germanybluetooth/adapter/ProgtimeSwitchPointAdapter;

    invoke-static {v0}, Lcom/delan/app/germanybluetooth/adapter/ProgtimeSwitchPointAdapter;->access$2200(Lcom/delan/app/germanybluetooth/adapter/ProgtimeSwitchPointAdapter;)Landroid/app/Activity;

    move-result-object v0

    new-instance v1, Lcom/delan/app/germanybluetooth/adapter/ProgtimeSwitchPointAdapter$ViewHolder$14$1;

    invoke-direct {v1, p0}, Lcom/delan/app/germanybluetooth/adapter/ProgtimeSwitchPointAdapter$ViewHolder$14$1;-><init>(Lcom/delan/app/germanybluetooth/adapter/ProgtimeSwitchPointAdapter$ViewHolder$14;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 530
    return-void
.end method

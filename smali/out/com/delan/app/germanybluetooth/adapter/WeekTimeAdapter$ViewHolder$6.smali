.class Lcom/delan/app/germanybluetooth/adapter/WeekTimeAdapter$ViewHolder$6;
.super Ljava/lang/Object;
.source "WeekTimeAdapter.java"

# interfaces
.implements Lcom/delan/app/germanybluetooth/bluetooth/MyTextView$OnLongUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/delan/app/germanybluetooth/adapter/WeekTimeAdapter$ViewHolder;-><init>(Lcom/delan/app/germanybluetooth/adapter/WeekTimeAdapter;Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/delan/app/germanybluetooth/adapter/WeekTimeAdapter$ViewHolder;

.field final synthetic val$this$0:Lcom/delan/app/germanybluetooth/adapter/WeekTimeAdapter;


# direct methods
.method constructor <init>(Lcom/delan/app/germanybluetooth/adapter/WeekTimeAdapter$ViewHolder;Lcom/delan/app/germanybluetooth/adapter/WeekTimeAdapter;)V
    .registers 3
    .param p1, "this$1"    # Lcom/delan/app/germanybluetooth/adapter/WeekTimeAdapter$ViewHolder;

    .prologue
    .line 288
    iput-object p1, p0, Lcom/delan/app/germanybluetooth/adapter/WeekTimeAdapter$ViewHolder$6;->this$1:Lcom/delan/app/germanybluetooth/adapter/WeekTimeAdapter$ViewHolder;

    iput-object p2, p0, Lcom/delan/app/germanybluetooth/adapter/WeekTimeAdapter$ViewHolder$6;->val$this$0:Lcom/delan/app/germanybluetooth/adapter/WeekTimeAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onLongUpdate()V
    .registers 3

    .prologue
    .line 291
    iget-object v0, p0, Lcom/delan/app/germanybluetooth/adapter/WeekTimeAdapter$ViewHolder$6;->this$1:Lcom/delan/app/germanybluetooth/adapter/WeekTimeAdapter$ViewHolder;

    iget-object v0, v0, Lcom/delan/app/germanybluetooth/adapter/WeekTimeAdapter$ViewHolder;->this$0:Lcom/delan/app/germanybluetooth/adapter/WeekTimeAdapter;

    invoke-static {v0}, Lcom/delan/app/germanybluetooth/adapter/WeekTimeAdapter;->access$1300(Lcom/delan/app/germanybluetooth/adapter/WeekTimeAdapter;)Landroid/app/Activity;

    move-result-object v0

    new-instance v1, Lcom/delan/app/germanybluetooth/adapter/WeekTimeAdapter$ViewHolder$6$1;

    invoke-direct {v1, p0}, Lcom/delan/app/germanybluetooth/adapter/WeekTimeAdapter$ViewHolder$6$1;-><init>(Lcom/delan/app/germanybluetooth/adapter/WeekTimeAdapter$ViewHolder$6;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 307
    return-void
.end method

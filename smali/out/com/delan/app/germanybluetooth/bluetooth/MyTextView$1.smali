.class Lcom/delan/app/germanybluetooth/bluetooth/MyTextView$1;
.super Ljava/util/TimerTask;
.source "MyTextView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/delan/app/germanybluetooth/bluetooth/MyTextView;->startTimer()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/delan/app/germanybluetooth/bluetooth/MyTextView;


# direct methods
.method constructor <init>(Lcom/delan/app/germanybluetooth/bluetooth/MyTextView;)V
    .registers 2
    .param p1, "this$0"    # Lcom/delan/app/germanybluetooth/bluetooth/MyTextView;

    .prologue
    .line 84
    iput-object p1, p0, Lcom/delan/app/germanybluetooth/bluetooth/MyTextView$1;->this$0:Lcom/delan/app/germanybluetooth/bluetooth/MyTextView;

    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 2

    .prologue
    .line 87
    iget-object v0, p0, Lcom/delan/app/germanybluetooth/bluetooth/MyTextView$1;->this$0:Lcom/delan/app/germanybluetooth/bluetooth/MyTextView;

    invoke-static {v0}, Lcom/delan/app/germanybluetooth/bluetooth/MyTextView;->access$000(Lcom/delan/app/germanybluetooth/bluetooth/MyTextView;)Z

    move-result v0

    if-eqz v0, :cond_19

    iget-object v0, p0, Lcom/delan/app/germanybluetooth/bluetooth/MyTextView$1;->this$0:Lcom/delan/app/germanybluetooth/bluetooth/MyTextView;

    invoke-static {v0}, Lcom/delan/app/germanybluetooth/bluetooth/MyTextView;->access$100(Lcom/delan/app/germanybluetooth/bluetooth/MyTextView;)Lcom/delan/app/germanybluetooth/bluetooth/MyTextView$OnLongUpdateListener;

    move-result-object v0

    if-eqz v0, :cond_19

    .line 88
    iget-object v0, p0, Lcom/delan/app/germanybluetooth/bluetooth/MyTextView$1;->this$0:Lcom/delan/app/germanybluetooth/bluetooth/MyTextView;

    invoke-static {v0}, Lcom/delan/app/germanybluetooth/bluetooth/MyTextView;->access$100(Lcom/delan/app/germanybluetooth/bluetooth/MyTextView;)Lcom/delan/app/germanybluetooth/bluetooth/MyTextView$OnLongUpdateListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/delan/app/germanybluetooth/bluetooth/MyTextView$OnLongUpdateListener;->onLongUpdate()V

    .line 90
    :cond_19
    return-void
.end method

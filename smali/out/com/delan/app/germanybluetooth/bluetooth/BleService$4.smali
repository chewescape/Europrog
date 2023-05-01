.class Lcom/delan/app/germanybluetooth/bluetooth/BleService$4;
.super Ljava/lang/Object;
.source "BleService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/delan/app/germanybluetooth/bluetooth/BleService;->startDelayThread()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/delan/app/germanybluetooth/bluetooth/BleService;


# direct methods
.method constructor <init>(Lcom/delan/app/germanybluetooth/bluetooth/BleService;)V
    .registers 2
    .param p1, "this$0"    # Lcom/delan/app/germanybluetooth/bluetooth/BleService;

    .prologue
    .line 566
    iput-object p1, p0, Lcom/delan/app/germanybluetooth/bluetooth/BleService$4;->this$0:Lcom/delan/app/germanybluetooth/bluetooth/BleService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 8

    .prologue
    const/16 v6, 0x4c

    const/4 v5, 0x1

    const/4 v4, -0x1

    .line 569
    :cond_4
    :goto_4
    iget-object v1, p0, Lcom/delan/app/germanybluetooth/bluetooth/BleService$4;->this$0:Lcom/delan/app/germanybluetooth/bluetooth/BleService;

    invoke-static {v1}, Lcom/delan/app/germanybluetooth/bluetooth/BleService;->access$200(Lcom/delan/app/germanybluetooth/bluetooth/BleService;)Z

    move-result v1

    if-eqz v1, :cond_c93

    .line 571
    const-wide/16 v2, 0x64

    :try_start_e
    invoke-static {v2, v3}, Ljava/lang/Thread;->sleep(J)V
    :try_end_11
    .catch Ljava/lang/InterruptedException; {:try_start_e .. :try_end_11} :catch_43b
    .catchall {:try_start_e .. :try_end_11} :catchall_869

    .line 575
    iget-object v1, p0, Lcom/delan/app/germanybluetooth/bluetooth/BleService$4;->this$0:Lcom/delan/app/germanybluetooth/bluetooth/BleService;

    invoke-static {v1}, Lcom/delan/app/germanybluetooth/bluetooth/BleService;->access$300(Lcom/delan/app/germanybluetooth/bluetooth/BleService;)I

    move-result v1

    if-eq v1, v4, :cond_3d

    .line 576
    iget-object v1, p0, Lcom/delan/app/germanybluetooth/bluetooth/BleService$4;->this$0:Lcom/delan/app/germanybluetooth/bluetooth/BleService;

    invoke-static {v1}, Lcom/delan/app/germanybluetooth/bluetooth/BleService;->access$306(Lcom/delan/app/germanybluetooth/bluetooth/BleService;)I

    move-result v1

    if-nez v1, :cond_3d

    .line 577
    iget-object v1, p0, Lcom/delan/app/germanybluetooth/bluetooth/BleService$4;->this$0:Lcom/delan/app/germanybluetooth/bluetooth/BleService;

    invoke-static {v1, v4}, Lcom/delan/app/germanybluetooth/bluetooth/BleService;->access$302(Lcom/delan/app/germanybluetooth/bluetooth/BleService;I)I

    .line 578
    iget-object v1, p0, Lcom/delan/app/germanybluetooth/bluetooth/BleService$4;->this$0:Lcom/delan/app/germanybluetooth/bluetooth/BleService;

    invoke-static {v1}, Lcom/delan/app/germanybluetooth/bluetooth/BleService;->access$100(Lcom/delan/app/germanybluetooth/bluetooth/BleService;)Landroid/os/Handler;

    move-result-object v1

    if-eqz v1, :cond_357

    .line 579
    iget-object v1, p0, Lcom/delan/app/germanybluetooth/bluetooth/BleService$4;->this$0:Lcom/delan/app/germanybluetooth/bluetooth/BleService;

    invoke-static {v1}, Lcom/delan/app/germanybluetooth/bluetooth/BleService;->access$100(Lcom/delan/app/germanybluetooth/bluetooth/BleService;)Landroid/os/Handler;

    move-result-object v1

    const-string v2, "47e9ee10-47e9-11e4-8939-164230d1df67"

    invoke-virtual {v1, v6, v2}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V

    .line 585
    :cond_3d
    :goto_3d
    iget-object v1, p0, Lcom/delan/app/germanybluetooth/bluetooth/BleService$4;->this$0:Lcom/delan/app/germanybluetooth/bluetooth/BleService;

    invoke-static {v1}, Lcom/delan/app/germanybluetooth/bluetooth/BleService;->access$400(Lcom/delan/app/germanybluetooth/bluetooth/BleService;)I

    move-result v1

    if-eq v1, v4, :cond_69

    .line 586
    iget-object v1, p0, Lcom/delan/app/germanybluetooth/bluetooth/BleService$4;->this$0:Lcom/delan/app/germanybluetooth/bluetooth/BleService;

    invoke-static {v1}, Lcom/delan/app/germanybluetooth/bluetooth/BleService;->access$406(Lcom/delan/app/germanybluetooth/bluetooth/BleService;)I

    move-result v1

    if-nez v1, :cond_69

    .line 587
    iget-object v1, p0, Lcom/delan/app/germanybluetooth/bluetooth/BleService$4;->this$0:Lcom/delan/app/germanybluetooth/bluetooth/BleService;

    invoke-static {v1, v4}, Lcom/delan/app/germanybluetooth/bluetooth/BleService;->access$402(Lcom/delan/app/germanybluetooth/bluetooth/BleService;I)I

    .line 588
    iget-object v1, p0, Lcom/delan/app/germanybluetooth/bluetooth/BleService$4;->this$0:Lcom/delan/app/germanybluetooth/bluetooth/BleService;

    invoke-static {v1}, Lcom/delan/app/germanybluetooth/bluetooth/BleService;->access$100(Lcom/delan/app/germanybluetooth/bluetooth/BleService;)Landroid/os/Handler;

    move-result-object v1

    if-eqz v1, :cond_363

    .line 589
    iget-object v1, p0, Lcom/delan/app/germanybluetooth/bluetooth/BleService$4;->this$0:Lcom/delan/app/germanybluetooth/bluetooth/BleService;

    invoke-static {v1}, Lcom/delan/app/germanybluetooth/bluetooth/BleService;->access$100(Lcom/delan/app/germanybluetooth/bluetooth/BleService;)Landroid/os/Handler;

    move-result-object v1

    const-string v2, "47e9ee11-47e9-11e4-8939-164230d1df67"

    invoke-virtual {v1, v6, v2}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V

    .line 595
    :cond_69
    :goto_69
    iget-object v1, p0, Lcom/delan/app/germanybluetooth/bluetooth/BleService$4;->this$0:Lcom/delan/app/germanybluetooth/bluetooth/BleService;

    invoke-static {v1}, Lcom/delan/app/germanybluetooth/bluetooth/BleService;->access$500(Lcom/delan/app/germanybluetooth/bluetooth/BleService;)I

    move-result v1

    if-eq v1, v4, :cond_95

    .line 596
    iget-object v1, p0, Lcom/delan/app/germanybluetooth/bluetooth/BleService$4;->this$0:Lcom/delan/app/germanybluetooth/bluetooth/BleService;

    invoke-static {v1}, Lcom/delan/app/germanybluetooth/bluetooth/BleService;->access$506(Lcom/delan/app/germanybluetooth/bluetooth/BleService;)I

    move-result v1

    if-nez v1, :cond_95

    .line 597
    iget-object v1, p0, Lcom/delan/app/germanybluetooth/bluetooth/BleService$4;->this$0:Lcom/delan/app/germanybluetooth/bluetooth/BleService;

    invoke-static {v1, v4}, Lcom/delan/app/germanybluetooth/bluetooth/BleService;->access$502(Lcom/delan/app/germanybluetooth/bluetooth/BleService;I)I

    .line 598
    iget-object v1, p0, Lcom/delan/app/germanybluetooth/bluetooth/BleService$4;->this$0:Lcom/delan/app/germanybluetooth/bluetooth/BleService;

    invoke-static {v1}, Lcom/delan/app/germanybluetooth/bluetooth/BleService;->access$100(Lcom/delan/app/germanybluetooth/bluetooth/BleService;)Landroid/os/Handler;

    move-result-object v1

    if-eqz v1, :cond_36f

    .line 599
    iget-object v1, p0, Lcom/delan/app/germanybluetooth/bluetooth/BleService$4;->this$0:Lcom/delan/app/germanybluetooth/bluetooth/BleService;

    invoke-static {v1}, Lcom/delan/app/germanybluetooth/bluetooth/BleService;->access$100(Lcom/delan/app/germanybluetooth/bluetooth/BleService;)Landroid/os/Handler;

    move-result-object v1

    const-string v2, "47e9ee12-47e9-11e4-8939-164230d1df67"

    invoke-virtual {v1, v6, v2}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V

    .line 605
    :cond_95
    :goto_95
    iget-object v1, p0, Lcom/delan/app/germanybluetooth/bluetooth/BleService$4;->this$0:Lcom/delan/app/germanybluetooth/bluetooth/BleService;

    invoke-static {v1}, Lcom/delan/app/germanybluetooth/bluetooth/BleService;->access$600(Lcom/delan/app/germanybluetooth/bluetooth/BleService;)I

    move-result v1

    if-eq v1, v4, :cond_c1

    .line 606
    iget-object v1, p0, Lcom/delan/app/germanybluetooth/bluetooth/BleService$4;->this$0:Lcom/delan/app/germanybluetooth/bluetooth/BleService;

    invoke-static {v1}, Lcom/delan/app/germanybluetooth/bluetooth/BleService;->access$606(Lcom/delan/app/germanybluetooth/bluetooth/BleService;)I

    move-result v1

    if-nez v1, :cond_c1

    .line 607
    iget-object v1, p0, Lcom/delan/app/germanybluetooth/bluetooth/BleService$4;->this$0:Lcom/delan/app/germanybluetooth/bluetooth/BleService;

    invoke-static {v1, v4}, Lcom/delan/app/germanybluetooth/bluetooth/BleService;->access$602(Lcom/delan/app/germanybluetooth/bluetooth/BleService;I)I

    .line 608
    iget-object v1, p0, Lcom/delan/app/germanybluetooth/bluetooth/BleService$4;->this$0:Lcom/delan/app/germanybluetooth/bluetooth/BleService;

    invoke-static {v1}, Lcom/delan/app/germanybluetooth/bluetooth/BleService;->access$100(Lcom/delan/app/germanybluetooth/bluetooth/BleService;)Landroid/os/Handler;

    move-result-object v1

    if-eqz v1, :cond_37b

    .line 609
    iget-object v1, p0, Lcom/delan/app/germanybluetooth/bluetooth/BleService$4;->this$0:Lcom/delan/app/germanybluetooth/bluetooth/BleService;

    invoke-static {v1}, Lcom/delan/app/germanybluetooth/bluetooth/BleService;->access$100(Lcom/delan/app/germanybluetooth/bluetooth/BleService;)Landroid/os/Handler;

    move-result-object v1

    const-string v2, "47e9ee13-47e9-11e4-8939-164230d1df67"

    invoke-virtual {v1, v6, v2}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V

    .line 615
    :cond_c1
    :goto_c1
    iget-object v1, p0, Lcom/delan/app/germanybluetooth/bluetooth/BleService$4;->this$0:Lcom/delan/app/germanybluetooth/bluetooth/BleService;

    invoke-static {v1}, Lcom/delan/app/germanybluetooth/bluetooth/BleService;->access$700(Lcom/delan/app/germanybluetooth/bluetooth/BleService;)I

    move-result v1

    if-eq v1, v4, :cond_ed

    .line 616
    iget-object v1, p0, Lcom/delan/app/germanybluetooth/bluetooth/BleService$4;->this$0:Lcom/delan/app/germanybluetooth/bluetooth/BleService;

    invoke-static {v1}, Lcom/delan/app/germanybluetooth/bluetooth/BleService;->access$706(Lcom/delan/app/germanybluetooth/bluetooth/BleService;)I

    move-result v1

    if-nez v1, :cond_ed

    .line 617
    iget-object v1, p0, Lcom/delan/app/germanybluetooth/bluetooth/BleService$4;->this$0:Lcom/delan/app/germanybluetooth/bluetooth/BleService;

    invoke-static {v1, v4}, Lcom/delan/app/germanybluetooth/bluetooth/BleService;->access$702(Lcom/delan/app/germanybluetooth/bluetooth/BleService;I)I

    .line 618
    iget-object v1, p0, Lcom/delan/app/germanybluetooth/bluetooth/BleService$4;->this$0:Lcom/delan/app/germanybluetooth/bluetooth/BleService;

    invoke-static {v1}, Lcom/delan/app/germanybluetooth/bluetooth/BleService;->access$100(Lcom/delan/app/germanybluetooth/bluetooth/BleService;)Landroid/os/Handler;

    move-result-object v1

    if-eqz v1, :cond_387

    .line 619
    iget-object v1, p0, Lcom/delan/app/germanybluetooth/bluetooth/BleService$4;->this$0:Lcom/delan/app/germanybluetooth/bluetooth/BleService;

    invoke-static {v1}, Lcom/delan/app/germanybluetooth/bluetooth/BleService;->access$100(Lcom/delan/app/germanybluetooth/bluetooth/BleService;)Landroid/os/Handler;

    move-result-object v1

    const-string v2, "47e9ee14-47e9-11e4-8939-164230d1df67"

    invoke-virtual {v1, v6, v2}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V

    .line 625
    :cond_ed
    :goto_ed
    iget-object v1, p0, Lcom/delan/app/germanybluetooth/bluetooth/BleService$4;->this$0:Lcom/delan/app/germanybluetooth/bluetooth/BleService;

    invoke-static {v1}, Lcom/delan/app/germanybluetooth/bluetooth/BleService;->access$800(Lcom/delan/app/germanybluetooth/bluetooth/BleService;)I

    move-result v1

    if-eq v1, v4, :cond_119

    .line 626
    iget-object v1, p0, Lcom/delan/app/germanybluetooth/bluetooth/BleService$4;->this$0:Lcom/delan/app/germanybluetooth/bluetooth/BleService;

    invoke-static {v1}, Lcom/delan/app/germanybluetooth/bluetooth/BleService;->access$806(Lcom/delan/app/germanybluetooth/bluetooth/BleService;)I

    move-result v1

    if-nez v1, :cond_119

    .line 627
    iget-object v1, p0, Lcom/delan/app/germanybluetooth/bluetooth/BleService$4;->this$0:Lcom/delan/app/germanybluetooth/bluetooth/BleService;

    invoke-static {v1, v4}, Lcom/delan/app/germanybluetooth/bluetooth/BleService;->access$802(Lcom/delan/app/germanybluetooth/bluetooth/BleService;I)I

    .line 628
    iget-object v1, p0, Lcom/delan/app/germanybluetooth/bluetooth/BleService$4;->this$0:Lcom/delan/app/germanybluetooth/bluetooth/BleService;

    invoke-static {v1}, Lcom/delan/app/germanybluetooth/bluetooth/BleService;->access$100(Lcom/delan/app/germanybluetooth/bluetooth/BleService;)Landroid/os/Handler;

    move-result-object v1

    if-eqz v1, :cond_393

    .line 629
    iget-object v1, p0, Lcom/delan/app/germanybluetooth/bluetooth/BleService$4;->this$0:Lcom/delan/app/germanybluetooth/bluetooth/BleService;

    invoke-static {v1}, Lcom/delan/app/germanybluetooth/bluetooth/BleService;->access$100(Lcom/delan/app/germanybluetooth/bluetooth/BleService;)Landroid/os/Handler;

    move-result-object v1

    const-string v2, "47e9ee15-47e9-11e4-8939-164230d1df67"

    invoke-virtual {v1, v6, v2}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V

    .line 635
    :cond_119
    :goto_119
    iget-object v1, p0, Lcom/delan/app/germanybluetooth/bluetooth/BleService$4;->this$0:Lcom/delan/app/germanybluetooth/bluetooth/BleService;

    invoke-static {v1}, Lcom/delan/app/germanybluetooth/bluetooth/BleService;->access$900(Lcom/delan/app/germanybluetooth/bluetooth/BleService;)I

    move-result v1

    if-eq v1, v4, :cond_145

    .line 636
    iget-object v1, p0, Lcom/delan/app/germanybluetooth/bluetooth/BleService$4;->this$0:Lcom/delan/app/germanybluetooth/bluetooth/BleService;

    invoke-static {v1}, Lcom/delan/app/germanybluetooth/bluetooth/BleService;->access$906(Lcom/delan/app/germanybluetooth/bluetooth/BleService;)I

    move-result v1

    if-nez v1, :cond_145

    .line 637
    iget-object v1, p0, Lcom/delan/app/germanybluetooth/bluetooth/BleService$4;->this$0:Lcom/delan/app/germanybluetooth/bluetooth/BleService;

    invoke-static {v1, v4}, Lcom/delan/app/germanybluetooth/bluetooth/BleService;->access$902(Lcom/delan/app/germanybluetooth/bluetooth/BleService;I)I

    .line 638
    iget-object v1, p0, Lcom/delan/app/germanybluetooth/bluetooth/BleService$4;->this$0:Lcom/delan/app/germanybluetooth/bluetooth/BleService;

    invoke-static {v1}, Lcom/delan/app/germanybluetooth/bluetooth/BleService;->access$100(Lcom/delan/app/germanybluetooth/bluetooth/BleService;)Landroid/os/Handler;

    move-result-object v1

    if-eqz v1, :cond_39f

    .line 639
    iget-object v1, p0, Lcom/delan/app/germanybluetooth/bluetooth/BleService$4;->this$0:Lcom/delan/app/germanybluetooth/bluetooth/BleService;

    invoke-static {v1}, Lcom/delan/app/germanybluetooth/bluetooth/BleService;->access$100(Lcom/delan/app/germanybluetooth/bluetooth/BleService;)Landroid/os/Handler;

    move-result-object v1

    const-string v2, "47e9ee16-47e9-11e4-8939-164230d1df67"

    invoke-virtual {v1, v6, v2}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V

    .line 645
    :cond_145
    :goto_145
    iget-object v1, p0, Lcom/delan/app/germanybluetooth/bluetooth/BleService$4;->this$0:Lcom/delan/app/germanybluetooth/bluetooth/BleService;

    invoke-static {v1}, Lcom/delan/app/germanybluetooth/bluetooth/BleService;->access$1000(Lcom/delan/app/germanybluetooth/bluetooth/BleService;)I

    move-result v1

    if-eq v1, v4, :cond_171

    .line 646
    iget-object v1, p0, Lcom/delan/app/germanybluetooth/bluetooth/BleService$4;->this$0:Lcom/delan/app/germanybluetooth/bluetooth/BleService;

    invoke-static {v1}, Lcom/delan/app/germanybluetooth/bluetooth/BleService;->access$1006(Lcom/delan/app/germanybluetooth/bluetooth/BleService;)I

    move-result v1

    if-nez v1, :cond_171

    .line 647
    iget-object v1, p0, Lcom/delan/app/germanybluetooth/bluetooth/BleService$4;->this$0:Lcom/delan/app/germanybluetooth/bluetooth/BleService;

    invoke-static {v1, v4}, Lcom/delan/app/germanybluetooth/bluetooth/BleService;->access$1002(Lcom/delan/app/germanybluetooth/bluetooth/BleService;I)I

    .line 648
    iget-object v1, p0, Lcom/delan/app/germanybluetooth/bluetooth/BleService$4;->this$0:Lcom/delan/app/germanybluetooth/bluetooth/BleService;

    invoke-static {v1}, Lcom/delan/app/germanybluetooth/bluetooth/BleService;->access$100(Lcom/delan/app/germanybluetooth/bluetooth/BleService;)Landroid/os/Handler;

    move-result-object v1

    if-eqz v1, :cond_3ab

    .line 649
    iget-object v1, p0, Lcom/delan/app/germanybluetooth/bluetooth/BleService$4;->this$0:Lcom/delan/app/germanybluetooth/bluetooth/BleService;

    invoke-static {v1}, Lcom/delan/app/germanybluetooth/bluetooth/BleService;->access$100(Lcom/delan/app/germanybluetooth/bluetooth/BleService;)Landroid/os/Handler;

    move-result-object v1

    const-string v2, "47e9ee20-47e9-11e4-8939-164230d1df67"

    invoke-virtual {v1, v6, v2}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V

    .line 655
    :cond_171
    :goto_171
    iget-object v1, p0, Lcom/delan/app/germanybluetooth/bluetooth/BleService$4;->this$0:Lcom/delan/app/germanybluetooth/bluetooth/BleService;

    invoke-static {v1}, Lcom/delan/app/germanybluetooth/bluetooth/BleService;->access$1100(Lcom/delan/app/germanybluetooth/bluetooth/BleService;)I

    move-result v1

    if-eq v1, v4, :cond_19d

    .line 656
    iget-object v1, p0, Lcom/delan/app/germanybluetooth/bluetooth/BleService$4;->this$0:Lcom/delan/app/germanybluetooth/bluetooth/BleService;

    invoke-static {v1}, Lcom/delan/app/germanybluetooth/bluetooth/BleService;->access$1106(Lcom/delan/app/germanybluetooth/bluetooth/BleService;)I

    move-result v1

    if-nez v1, :cond_19d

    .line 657
    iget-object v1, p0, Lcom/delan/app/germanybluetooth/bluetooth/BleService$4;->this$0:Lcom/delan/app/germanybluetooth/bluetooth/BleService;

    invoke-static {v1, v4}, Lcom/delan/app/germanybluetooth/bluetooth/BleService;->access$1102(Lcom/delan/app/germanybluetooth/bluetooth/BleService;I)I

    .line 658
    iget-object v1, p0, Lcom/delan/app/germanybluetooth/bluetooth/BleService$4;->this$0:Lcom/delan/app/germanybluetooth/bluetooth/BleService;

    invoke-static {v1}, Lcom/delan/app/germanybluetooth/bluetooth/BleService;->access$100(Lcom/delan/app/germanybluetooth/bluetooth/BleService;)Landroid/os/Handler;

    move-result-object v1

    if-eqz v1, :cond_3b7

    .line 659
    iget-object v1, p0, Lcom/delan/app/germanybluetooth/bluetooth/BleService$4;->this$0:Lcom/delan/app/germanybluetooth/bluetooth/BleService;

    invoke-static {v1}, Lcom/delan/app/germanybluetooth/bluetooth/BleService;->access$100(Lcom/delan/app/germanybluetooth/bluetooth/BleService;)Landroid/os/Handler;

    move-result-object v1

    const-string v2, "47e9ee2a-47e9-11e4-8939-164230d1df67"

    invoke-virtual {v1, v6, v2}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V

    .line 665
    :cond_19d
    :goto_19d
    iget-object v1, p0, Lcom/delan/app/germanybluetooth/bluetooth/BleService$4;->this$0:Lcom/delan/app/germanybluetooth/bluetooth/BleService;

    invoke-static {v1}, Lcom/delan/app/germanybluetooth/bluetooth/BleService;->access$1200(Lcom/delan/app/germanybluetooth/bluetooth/BleService;)I

    move-result v1

    if-eq v1, v4, :cond_1c9

    .line 666
    iget-object v1, p0, Lcom/delan/app/germanybluetooth/bluetooth/BleService$4;->this$0:Lcom/delan/app/germanybluetooth/bluetooth/BleService;

    invoke-static {v1}, Lcom/delan/app/germanybluetooth/bluetooth/BleService;->access$1206(Lcom/delan/app/germanybluetooth/bluetooth/BleService;)I

    move-result v1

    if-nez v1, :cond_1c9

    .line 667
    iget-object v1, p0, Lcom/delan/app/germanybluetooth/bluetooth/BleService$4;->this$0:Lcom/delan/app/germanybluetooth/bluetooth/BleService;

    invoke-static {v1, v4}, Lcom/delan/app/germanybluetooth/bluetooth/BleService;->access$1202(Lcom/delan/app/germanybluetooth/bluetooth/BleService;I)I

    .line 668
    iget-object v1, p0, Lcom/delan/app/germanybluetooth/bluetooth/BleService$4;->this$0:Lcom/delan/app/germanybluetooth/bluetooth/BleService;

    invoke-static {v1}, Lcom/delan/app/germanybluetooth/bluetooth/BleService;->access$100(Lcom/delan/app/germanybluetooth/bluetooth/BleService;)Landroid/os/Handler;

    move-result-object v1

    if-eqz v1, :cond_3c3

    .line 669
    iget-object v1, p0, Lcom/delan/app/germanybluetooth/bluetooth/BleService$4;->this$0:Lcom/delan/app/germanybluetooth/bluetooth/BleService;

    invoke-static {v1}, Lcom/delan/app/germanybluetooth/bluetooth/BleService;->access$100(Lcom/delan/app/germanybluetooth/bluetooth/BleService;)Landroid/os/Handler;

    move-result-object v1

    const-string v2, "47e9ee2b-47e9-11e4-8939-164230d1df67"

    invoke-virtual {v1, v6, v2}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V

    .line 675
    :cond_1c9
    :goto_1c9
    iget-object v1, p0, Lcom/delan/app/germanybluetooth/bluetooth/BleService$4;->this$0:Lcom/delan/app/germanybluetooth/bluetooth/BleService;

    invoke-static {v1}, Lcom/delan/app/germanybluetooth/bluetooth/BleService;->access$1300(Lcom/delan/app/germanybluetooth/bluetooth/BleService;)I

    move-result v1

    if-eq v1, v4, :cond_1f5

    .line 676
    iget-object v1, p0, Lcom/delan/app/germanybluetooth/bluetooth/BleService$4;->this$0:Lcom/delan/app/germanybluetooth/bluetooth/BleService;

    invoke-static {v1}, Lcom/delan/app/germanybluetooth/bluetooth/BleService;->access$1306(Lcom/delan/app/germanybluetooth/bluetooth/BleService;)I

    move-result v1

    if-nez v1, :cond_1f5

    .line 677
    iget-object v1, p0, Lcom/delan/app/germanybluetooth/bluetooth/BleService$4;->this$0:Lcom/delan/app/germanybluetooth/bluetooth/BleService;

    invoke-static {v1, v4}, Lcom/delan/app/germanybluetooth/bluetooth/BleService;->access$1302(Lcom/delan/app/germanybluetooth/bluetooth/BleService;I)I

    .line 678
    iget-object v1, p0, Lcom/delan/app/germanybluetooth/bluetooth/BleService$4;->this$0:Lcom/delan/app/germanybluetooth/bluetooth/BleService;

    invoke-static {v1}, Lcom/delan/app/germanybluetooth/bluetooth/BleService;->access$100(Lcom/delan/app/germanybluetooth/bluetooth/BleService;)Landroid/os/Handler;

    move-result-object v1

    if-eqz v1, :cond_3cf

    .line 679
    iget-object v1, p0, Lcom/delan/app/germanybluetooth/bluetooth/BleService$4;->this$0:Lcom/delan/app/germanybluetooth/bluetooth/BleService;

    invoke-static {v1}, Lcom/delan/app/germanybluetooth/bluetooth/BleService;->access$100(Lcom/delan/app/germanybluetooth/bluetooth/BleService;)Landroid/os/Handler;

    move-result-object v1

    const-string v2, "47e9ef52-47e9-11e4-8939-164230d1df67"

    invoke-virtual {v1, v6, v2}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V

    .line 685
    :cond_1f5
    :goto_1f5
    iget-object v1, p0, Lcom/delan/app/germanybluetooth/bluetooth/BleService$4;->this$0:Lcom/delan/app/germanybluetooth/bluetooth/BleService;

    invoke-static {v1}, Lcom/delan/app/germanybluetooth/bluetooth/BleService;->access$1400(Lcom/delan/app/germanybluetooth/bluetooth/BleService;)I

    move-result v1

    if-eq v1, v4, :cond_221

    .line 686
    iget-object v1, p0, Lcom/delan/app/germanybluetooth/bluetooth/BleService$4;->this$0:Lcom/delan/app/germanybluetooth/bluetooth/BleService;

    invoke-static {v1}, Lcom/delan/app/germanybluetooth/bluetooth/BleService;->access$1406(Lcom/delan/app/germanybluetooth/bluetooth/BleService;)I

    move-result v1

    if-nez v1, :cond_221

    .line 687
    iget-object v1, p0, Lcom/delan/app/germanybluetooth/bluetooth/BleService$4;->this$0:Lcom/delan/app/germanybluetooth/bluetooth/BleService;

    invoke-static {v1, v4}, Lcom/delan/app/germanybluetooth/bluetooth/BleService;->access$1402(Lcom/delan/app/germanybluetooth/bluetooth/BleService;I)I

    .line 688
    iget-object v1, p0, Lcom/delan/app/germanybluetooth/bluetooth/BleService$4;->this$0:Lcom/delan/app/germanybluetooth/bluetooth/BleService;

    invoke-static {v1}, Lcom/delan/app/germanybluetooth/bluetooth/BleService;->access$100(Lcom/delan/app/germanybluetooth/bluetooth/BleService;)Landroid/os/Handler;

    move-result-object v1

    if-eqz v1, :cond_3db

    .line 689
    iget-object v1, p0, Lcom/delan/app/germanybluetooth/bluetooth/BleService$4;->this$0:Lcom/delan/app/germanybluetooth/bluetooth/BleService;

    invoke-static {v1}, Lcom/delan/app/germanybluetooth/bluetooth/BleService;->access$100(Lcom/delan/app/germanybluetooth/bluetooth/BleService;)Landroid/os/Handler;

    move-result-object v1

    const-string v2, "47e9ef53-47e9-11e4-8939-164230d1df67"

    invoke-virtual {v1, v6, v2}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V

    .line 695
    :cond_221
    :goto_221
    iget-object v1, p0, Lcom/delan/app/germanybluetooth/bluetooth/BleService$4;->this$0:Lcom/delan/app/germanybluetooth/bluetooth/BleService;

    invoke-static {v1}, Lcom/delan/app/germanybluetooth/bluetooth/BleService;->access$1500(Lcom/delan/app/germanybluetooth/bluetooth/BleService;)I

    move-result v1

    if-eq v1, v4, :cond_24d

    .line 696
    iget-object v1, p0, Lcom/delan/app/germanybluetooth/bluetooth/BleService$4;->this$0:Lcom/delan/app/germanybluetooth/bluetooth/BleService;

    invoke-static {v1}, Lcom/delan/app/germanybluetooth/bluetooth/BleService;->access$1506(Lcom/delan/app/germanybluetooth/bluetooth/BleService;)I

    move-result v1

    if-nez v1, :cond_24d

    .line 697
    iget-object v1, p0, Lcom/delan/app/germanybluetooth/bluetooth/BleService$4;->this$0:Lcom/delan/app/germanybluetooth/bluetooth/BleService;

    invoke-static {v1, v4}, Lcom/delan/app/germanybluetooth/bluetooth/BleService;->access$1502(Lcom/delan/app/germanybluetooth/bluetooth/BleService;I)I

    .line 698
    iget-object v1, p0, Lcom/delan/app/germanybluetooth/bluetooth/BleService$4;->this$0:Lcom/delan/app/germanybluetooth/bluetooth/BleService;

    invoke-static {v1}, Lcom/delan/app/germanybluetooth/bluetooth/BleService;->access$100(Lcom/delan/app/germanybluetooth/bluetooth/BleService;)Landroid/os/Handler;

    move-result-object v1

    if-eqz v1, :cond_3e7

    .line 699
    iget-object v1, p0, Lcom/delan/app/germanybluetooth/bluetooth/BleService$4;->this$0:Lcom/delan/app/germanybluetooth/bluetooth/BleService;

    invoke-static {v1}, Lcom/delan/app/germanybluetooth/bluetooth/BleService;->access$100(Lcom/delan/app/germanybluetooth/bluetooth/BleService;)Landroid/os/Handler;

    move-result-object v1

    const-string v2, "47e9ef54-47e9-11e4-8939-164230d1df67"

    invoke-virtual {v1, v6, v2}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V

    .line 705
    :cond_24d
    :goto_24d
    iget-object v1, p0, Lcom/delan/app/germanybluetooth/bluetooth/BleService$4;->this$0:Lcom/delan/app/germanybluetooth/bluetooth/BleService;

    invoke-static {v1}, Lcom/delan/app/germanybluetooth/bluetooth/BleService;->access$1600(Lcom/delan/app/germanybluetooth/bluetooth/BleService;)I

    move-result v1

    if-eq v1, v4, :cond_279

    .line 706
    iget-object v1, p0, Lcom/delan/app/germanybluetooth/bluetooth/BleService$4;->this$0:Lcom/delan/app/germanybluetooth/bluetooth/BleService;

    invoke-static {v1}, Lcom/delan/app/germanybluetooth/bluetooth/BleService;->access$1606(Lcom/delan/app/germanybluetooth/bluetooth/BleService;)I

    move-result v1

    if-nez v1, :cond_279

    .line 707
    iget-object v1, p0, Lcom/delan/app/germanybluetooth/bluetooth/BleService$4;->this$0:Lcom/delan/app/germanybluetooth/bluetooth/BleService;

    invoke-static {v1, v4}, Lcom/delan/app/germanybluetooth/bluetooth/BleService;->access$1602(Lcom/delan/app/germanybluetooth/bluetooth/BleService;I)I

    .line 708
    iget-object v1, p0, Lcom/delan/app/germanybluetooth/bluetooth/BleService$4;->this$0:Lcom/delan/app/germanybluetooth/bluetooth/BleService;

    invoke-static {v1}, Lcom/delan/app/germanybluetooth/bluetooth/BleService;->access$100(Lcom/delan/app/germanybluetooth/bluetooth/BleService;)Landroid/os/Handler;

    move-result-object v1

    if-eqz v1, :cond_3f3

    .line 709
    iget-object v1, p0, Lcom/delan/app/germanybluetooth/bluetooth/BleService$4;->this$0:Lcom/delan/app/germanybluetooth/bluetooth/BleService;

    invoke-static {v1}, Lcom/delan/app/germanybluetooth/bluetooth/BleService;->access$100(Lcom/delan/app/germanybluetooth/bluetooth/BleService;)Landroid/os/Handler;

    move-result-object v1

    const-string v2, "47e9ef55-47e9-11e4-8939-164230d1df67"

    invoke-virtual {v1, v6, v2}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V

    .line 715
    :cond_279
    :goto_279
    iget-object v1, p0, Lcom/delan/app/germanybluetooth/bluetooth/BleService$4;->this$0:Lcom/delan/app/germanybluetooth/bluetooth/BleService;

    invoke-static {v1}, Lcom/delan/app/germanybluetooth/bluetooth/BleService;->access$1700(Lcom/delan/app/germanybluetooth/bluetooth/BleService;)I

    move-result v1

    if-eq v1, v4, :cond_2a5

    .line 716
    iget-object v1, p0, Lcom/delan/app/germanybluetooth/bluetooth/BleService$4;->this$0:Lcom/delan/app/germanybluetooth/bluetooth/BleService;

    invoke-static {v1}, Lcom/delan/app/germanybluetooth/bluetooth/BleService;->access$1706(Lcom/delan/app/germanybluetooth/bluetooth/BleService;)I

    move-result v1

    if-nez v1, :cond_2a5

    .line 717
    iget-object v1, p0, Lcom/delan/app/germanybluetooth/bluetooth/BleService$4;->this$0:Lcom/delan/app/germanybluetooth/bluetooth/BleService;

    invoke-static {v1, v4}, Lcom/delan/app/germanybluetooth/bluetooth/BleService;->access$1702(Lcom/delan/app/germanybluetooth/bluetooth/BleService;I)I

    .line 718
    iget-object v1, p0, Lcom/delan/app/germanybluetooth/bluetooth/BleService$4;->this$0:Lcom/delan/app/germanybluetooth/bluetooth/BleService;

    invoke-static {v1}, Lcom/delan/app/germanybluetooth/bluetooth/BleService;->access$100(Lcom/delan/app/germanybluetooth/bluetooth/BleService;)Landroid/os/Handler;

    move-result-object v1

    if-eqz v1, :cond_3ff

    .line 719
    iget-object v1, p0, Lcom/delan/app/germanybluetooth/bluetooth/BleService$4;->this$0:Lcom/delan/app/germanybluetooth/bluetooth/BleService;

    invoke-static {v1}, Lcom/delan/app/germanybluetooth/bluetooth/BleService;->access$100(Lcom/delan/app/germanybluetooth/bluetooth/BleService;)Landroid/os/Handler;

    move-result-object v1

    const-string v2, "47e9ef56-47e9-11e4-8939-164230d1df67"

    invoke-virtual {v1, v6, v2}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V

    .line 725
    :cond_2a5
    :goto_2a5
    iget-object v1, p0, Lcom/delan/app/germanybluetooth/bluetooth/BleService$4;->this$0:Lcom/delan/app/germanybluetooth/bluetooth/BleService;

    invoke-static {v1}, Lcom/delan/app/germanybluetooth/bluetooth/BleService;->access$1800(Lcom/delan/app/germanybluetooth/bluetooth/BleService;)I

    move-result v1

    if-eq v1, v4, :cond_2d1

    .line 726
    iget-object v1, p0, Lcom/delan/app/germanybluetooth/bluetooth/BleService$4;->this$0:Lcom/delan/app/germanybluetooth/bluetooth/BleService;

    invoke-static {v1}, Lcom/delan/app/germanybluetooth/bluetooth/BleService;->access$1806(Lcom/delan/app/germanybluetooth/bluetooth/BleService;)I

    move-result v1

    if-nez v1, :cond_2d1

    .line 727
    iget-object v1, p0, Lcom/delan/app/germanybluetooth/bluetooth/BleService$4;->this$0:Lcom/delan/app/germanybluetooth/bluetooth/BleService;

    invoke-static {v1, v4}, Lcom/delan/app/germanybluetooth/bluetooth/BleService;->access$1802(Lcom/delan/app/germanybluetooth/bluetooth/BleService;I)I

    .line 728
    iget-object v1, p0, Lcom/delan/app/germanybluetooth/bluetooth/BleService$4;->this$0:Lcom/delan/app/germanybluetooth/bluetooth/BleService;

    invoke-static {v1}, Lcom/delan/app/germanybluetooth/bluetooth/BleService;->access$100(Lcom/delan/app/germanybluetooth/bluetooth/BleService;)Landroid/os/Handler;

    move-result-object v1

    if-eqz v1, :cond_40b

    .line 729
    iget-object v1, p0, Lcom/delan/app/germanybluetooth/bluetooth/BleService$4;->this$0:Lcom/delan/app/germanybluetooth/bluetooth/BleService;

    invoke-static {v1}, Lcom/delan/app/germanybluetooth/bluetooth/BleService;->access$100(Lcom/delan/app/germanybluetooth/bluetooth/BleService;)Landroid/os/Handler;

    move-result-object v1

    const-string v2, "47e9ef57-47e9-11e4-8939-164230d1df67"

    invoke-virtual {v1, v6, v2}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V

    .line 735
    :cond_2d1
    :goto_2d1
    iget-object v1, p0, Lcom/delan/app/germanybluetooth/bluetooth/BleService$4;->this$0:Lcom/delan/app/germanybluetooth/bluetooth/BleService;

    invoke-static {v1}, Lcom/delan/app/germanybluetooth/bluetooth/BleService;->access$1900(Lcom/delan/app/germanybluetooth/bluetooth/BleService;)I

    move-result v1

    if-eq v1, v4, :cond_2fd

    .line 736
    iget-object v1, p0, Lcom/delan/app/germanybluetooth/bluetooth/BleService$4;->this$0:Lcom/delan/app/germanybluetooth/bluetooth/BleService;

    invoke-static {v1}, Lcom/delan/app/germanybluetooth/bluetooth/BleService;->access$1906(Lcom/delan/app/germanybluetooth/bluetooth/BleService;)I

    move-result v1

    if-nez v1, :cond_2fd

    .line 737
    iget-object v1, p0, Lcom/delan/app/germanybluetooth/bluetooth/BleService$4;->this$0:Lcom/delan/app/germanybluetooth/bluetooth/BleService;

    invoke-static {v1, v4}, Lcom/delan/app/germanybluetooth/bluetooth/BleService;->access$1902(Lcom/delan/app/germanybluetooth/bluetooth/BleService;I)I

    .line 738
    iget-object v1, p0, Lcom/delan/app/germanybluetooth/bluetooth/BleService$4;->this$0:Lcom/delan/app/germanybluetooth/bluetooth/BleService;

    invoke-static {v1}, Lcom/delan/app/germanybluetooth/bluetooth/BleService;->access$100(Lcom/delan/app/germanybluetooth/bluetooth/BleService;)Landroid/os/Handler;

    move-result-object v1

    if-eqz v1, :cond_417

    .line 739
    iget-object v1, p0, Lcom/delan/app/germanybluetooth/bluetooth/BleService$4;->this$0:Lcom/delan/app/germanybluetooth/bluetooth/BleService;

    invoke-static {v1}, Lcom/delan/app/germanybluetooth/bluetooth/BleService;->access$100(Lcom/delan/app/germanybluetooth/bluetooth/BleService;)Landroid/os/Handler;

    move-result-object v1

    const-string v2, "47e9ef58-47e9-11e4-8939-164230d1df67"

    invoke-virtual {v1, v6, v2}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V

    .line 745
    :cond_2fd
    :goto_2fd
    iget-object v1, p0, Lcom/delan/app/germanybluetooth/bluetooth/BleService$4;->this$0:Lcom/delan/app/germanybluetooth/bluetooth/BleService;

    invoke-static {v1}, Lcom/delan/app/germanybluetooth/bluetooth/BleService;->access$2000(Lcom/delan/app/germanybluetooth/bluetooth/BleService;)I

    move-result v1

    if-eq v1, v4, :cond_329

    .line 746
    iget-object v1, p0, Lcom/delan/app/germanybluetooth/bluetooth/BleService$4;->this$0:Lcom/delan/app/germanybluetooth/bluetooth/BleService;

    invoke-static {v1}, Lcom/delan/app/germanybluetooth/bluetooth/BleService;->access$2006(Lcom/delan/app/germanybluetooth/bluetooth/BleService;)I

    move-result v1

    if-nez v1, :cond_329

    .line 747
    iget-object v1, p0, Lcom/delan/app/germanybluetooth/bluetooth/BleService$4;->this$0:Lcom/delan/app/germanybluetooth/bluetooth/BleService;

    invoke-static {v1, v4}, Lcom/delan/app/germanybluetooth/bluetooth/BleService;->access$2002(Lcom/delan/app/germanybluetooth/bluetooth/BleService;I)I

    .line 748
    iget-object v1, p0, Lcom/delan/app/germanybluetooth/bluetooth/BleService$4;->this$0:Lcom/delan/app/germanybluetooth/bluetooth/BleService;

    invoke-static {v1}, Lcom/delan/app/germanybluetooth/bluetooth/BleService;->access$100(Lcom/delan/app/germanybluetooth/bluetooth/BleService;)Landroid/os/Handler;

    move-result-object v1

    if-eqz v1, :cond_423

    .line 749
    iget-object v1, p0, Lcom/delan/app/germanybluetooth/bluetooth/BleService$4;->this$0:Lcom/delan/app/germanybluetooth/bluetooth/BleService;

    invoke-static {v1}, Lcom/delan/app/germanybluetooth/bluetooth/BleService;->access$100(Lcom/delan/app/germanybluetooth/bluetooth/BleService;)Landroid/os/Handler;

    move-result-object v1

    const-string v2, "47e9ef59-47e9-11e4-8939-164230d1df67"

    invoke-virtual {v1, v6, v2}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V

    .line 755
    :cond_329
    :goto_329
    iget-object v1, p0, Lcom/delan/app/germanybluetooth/bluetooth/BleService$4;->this$0:Lcom/delan/app/germanybluetooth/bluetooth/BleService;

    invoke-static {v1}, Lcom/delan/app/germanybluetooth/bluetooth/BleService;->access$2100(Lcom/delan/app/germanybluetooth/bluetooth/BleService;)I

    move-result v1

    if-eq v1, v4, :cond_4

    .line 756
    iget-object v1, p0, Lcom/delan/app/germanybluetooth/bluetooth/BleService$4;->this$0:Lcom/delan/app/germanybluetooth/bluetooth/BleService;

    invoke-static {v1}, Lcom/delan/app/germanybluetooth/bluetooth/BleService;->access$2106(Lcom/delan/app/germanybluetooth/bluetooth/BleService;)I

    move-result v1

    if-nez v1, :cond_4

    .line 757
    iget-object v1, p0, Lcom/delan/app/germanybluetooth/bluetooth/BleService$4;->this$0:Lcom/delan/app/germanybluetooth/bluetooth/BleService;

    invoke-static {v1, v4}, Lcom/delan/app/germanybluetooth/bluetooth/BleService;->access$2102(Lcom/delan/app/germanybluetooth/bluetooth/BleService;I)I

    .line 758
    iget-object v1, p0, Lcom/delan/app/germanybluetooth/bluetooth/BleService$4;->this$0:Lcom/delan/app/germanybluetooth/bluetooth/BleService;

    invoke-static {v1}, Lcom/delan/app/germanybluetooth/bluetooth/BleService;->access$100(Lcom/delan/app/germanybluetooth/bluetooth/BleService;)Landroid/os/Handler;

    move-result-object v1

    if-eqz v1, :cond_42f

    .line 759
    iget-object v1, p0, Lcom/delan/app/germanybluetooth/bluetooth/BleService$4;->this$0:Lcom/delan/app/germanybluetooth/bluetooth/BleService;

    invoke-static {v1}, Lcom/delan/app/germanybluetooth/bluetooth/BleService;->access$100(Lcom/delan/app/germanybluetooth/bluetooth/BleService;)Landroid/os/Handler;

    move-result-object v1

    const-string v2, "47e9ef61-47e9-11e4-8939-164230d1df67"

    invoke-virtual {v1, v6, v2}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V

    goto/16 :goto_4

    .line 581
    :cond_357
    iget-object v1, p0, Lcom/delan/app/germanybluetooth/bluetooth/BleService$4;->this$0:Lcom/delan/app/germanybluetooth/bluetooth/BleService;

    invoke-static {v1, v5}, Lcom/delan/app/germanybluetooth/bluetooth/BleService;->access$302(Lcom/delan/app/germanybluetooth/bluetooth/BleService;I)I

    .line 582
    const-string v1, "uiHandler == null"

    invoke-static {v1}, Lcom/apkfuns/logutils/LogUtils;->e(Ljava/lang/Object;)V

    goto/16 :goto_3d

    .line 591
    :cond_363
    iget-object v1, p0, Lcom/delan/app/germanybluetooth/bluetooth/BleService$4;->this$0:Lcom/delan/app/germanybluetooth/bluetooth/BleService;

    invoke-static {v1, v5}, Lcom/delan/app/germanybluetooth/bluetooth/BleService;->access$402(Lcom/delan/app/germanybluetooth/bluetooth/BleService;I)I

    .line 592
    const-string v1, "uiHandler == null"

    invoke-static {v1}, Lcom/apkfuns/logutils/LogUtils;->e(Ljava/lang/Object;)V

    goto/16 :goto_69

    .line 601
    :cond_36f
    iget-object v1, p0, Lcom/delan/app/germanybluetooth/bluetooth/BleService$4;->this$0:Lcom/delan/app/germanybluetooth/bluetooth/BleService;

    invoke-static {v1, v5}, Lcom/delan/app/germanybluetooth/bluetooth/BleService;->access$502(Lcom/delan/app/germanybluetooth/bluetooth/BleService;I)I

    .line 602
    const-string v1, "uiHandler == null"

    invoke-static {v1}, Lcom/apkfuns/logutils/LogUtils;->e(Ljava/lang/Object;)V

    goto/16 :goto_95

    .line 611
    :cond_37b
    iget-object v1, p0, Lcom/delan/app/germanybluetooth/bluetooth/BleService$4;->this$0:Lcom/delan/app/germanybluetooth/bluetooth/BleService;

    invoke-static {v1, v5}, Lcom/delan/app/germanybluetooth/bluetooth/BleService;->access$602(Lcom/delan/app/germanybluetooth/bluetooth/BleService;I)I

    .line 612
    const-string v1, "uiHandler == null"

    invoke-static {v1}, Lcom/apkfuns/logutils/LogUtils;->e(Ljava/lang/Object;)V

    goto/16 :goto_c1

    .line 621
    :cond_387
    iget-object v1, p0, Lcom/delan/app/germanybluetooth/bluetooth/BleService$4;->this$0:Lcom/delan/app/germanybluetooth/bluetooth/BleService;

    invoke-static {v1, v5}, Lcom/delan/app/germanybluetooth/bluetooth/BleService;->access$702(Lcom/delan/app/germanybluetooth/bluetooth/BleService;I)I

    .line 622
    const-string v1, "uiHandler == null"

    invoke-static {v1}, Lcom/apkfuns/logutils/LogUtils;->e(Ljava/lang/Object;)V

    goto/16 :goto_ed

    .line 631
    :cond_393
    iget-object v1, p0, Lcom/delan/app/germanybluetooth/bluetooth/BleService$4;->this$0:Lcom/delan/app/germanybluetooth/bluetooth/BleService;

    invoke-static {v1, v5}, Lcom/delan/app/germanybluetooth/bluetooth/BleService;->access$802(Lcom/delan/app/germanybluetooth/bluetooth/BleService;I)I

    .line 632
    const-string v1, "uiHandler == null"

    invoke-static {v1}, Lcom/apkfuns/logutils/LogUtils;->e(Ljava/lang/Object;)V

    goto/16 :goto_119

    .line 641
    :cond_39f
    iget-object v1, p0, Lcom/delan/app/germanybluetooth/bluetooth/BleService$4;->this$0:Lcom/delan/app/germanybluetooth/bluetooth/BleService;

    invoke-static {v1, v5}, Lcom/delan/app/germanybluetooth/bluetooth/BleService;->access$902(Lcom/delan/app/germanybluetooth/bluetooth/BleService;I)I

    .line 642
    const-string v1, "uiHandler == null"

    invoke-static {v1}, Lcom/apkfuns/logutils/LogUtils;->e(Ljava/lang/Object;)V

    goto/16 :goto_145

    .line 651
    :cond_3ab
    iget-object v1, p0, Lcom/delan/app/germanybluetooth/bluetooth/BleService$4;->this$0:Lcom/delan/app/germanybluetooth/bluetooth/BleService;

    invoke-static {v1, v5}, Lcom/delan/app/germanybluetooth/bluetooth/BleService;->access$1002(Lcom/delan/app/germanybluetooth/bluetooth/BleService;I)I

    .line 652
    const-string v1, "uiHandler == null"

    invoke-static {v1}, Lcom/apkfuns/logutils/LogUtils;->e(Ljava/lang/Object;)V

    goto/16 :goto_171

    .line 661
    :cond_3b7
    iget-object v1, p0, Lcom/delan/app/germanybluetooth/bluetooth/BleService$4;->this$0:Lcom/delan/app/germanybluetooth/bluetooth/BleService;

    invoke-static {v1, v5}, Lcom/delan/app/germanybluetooth/bluetooth/BleService;->access$1102(Lcom/delan/app/germanybluetooth/bluetooth/BleService;I)I

    .line 662
    const-string v1, "uiHandler == null"

    invoke-static {v1}, Lcom/apkfuns/logutils/LogUtils;->e(Ljava/lang/Object;)V

    goto/16 :goto_19d

    .line 671
    :cond_3c3
    iget-object v1, p0, Lcom/delan/app/germanybluetooth/bluetooth/BleService$4;->this$0:Lcom/delan/app/germanybluetooth/bluetooth/BleService;

    invoke-static {v1, v5}, Lcom/delan/app/germanybluetooth/bluetooth/BleService;->access$1202(Lcom/delan/app/germanybluetooth/bluetooth/BleService;I)I

    .line 672
    const-string v1, "uiHandler == null"

    invoke-static {v1}, Lcom/apkfuns/logutils/LogUtils;->e(Ljava/lang/Object;)V

    goto/16 :goto_1c9

    .line 681
    :cond_3cf
    iget-object v1, p0, Lcom/delan/app/germanybluetooth/bluetooth/BleService$4;->this$0:Lcom/delan/app/germanybluetooth/bluetooth/BleService;

    invoke-static {v1, v5}, Lcom/delan/app/germanybluetooth/bluetooth/BleService;->access$1302(Lcom/delan/app/germanybluetooth/bluetooth/BleService;I)I

    .line 682
    const-string v1, "uiHandler == null"

    invoke-static {v1}, Lcom/apkfuns/logutils/LogUtils;->e(Ljava/lang/Object;)V

    goto/16 :goto_1f5

    .line 691
    :cond_3db
    iget-object v1, p0, Lcom/delan/app/germanybluetooth/bluetooth/BleService$4;->this$0:Lcom/delan/app/germanybluetooth/bluetooth/BleService;

    invoke-static {v1, v5}, Lcom/delan/app/germanybluetooth/bluetooth/BleService;->access$1402(Lcom/delan/app/germanybluetooth/bluetooth/BleService;I)I

    .line 692
    const-string v1, "uiHandler == null"

    invoke-static {v1}, Lcom/apkfuns/logutils/LogUtils;->e(Ljava/lang/Object;)V

    goto/16 :goto_221

    .line 701
    :cond_3e7
    iget-object v1, p0, Lcom/delan/app/germanybluetooth/bluetooth/BleService$4;->this$0:Lcom/delan/app/germanybluetooth/bluetooth/BleService;

    invoke-static {v1, v5}, Lcom/delan/app/germanybluetooth/bluetooth/BleService;->access$1502(Lcom/delan/app/germanybluetooth/bluetooth/BleService;I)I

    .line 702
    const-string v1, "uiHandler == null"

    invoke-static {v1}, Lcom/apkfuns/logutils/LogUtils;->e(Ljava/lang/Object;)V

    goto/16 :goto_24d

    .line 711
    :cond_3f3
    iget-object v1, p0, Lcom/delan/app/germanybluetooth/bluetooth/BleService$4;->this$0:Lcom/delan/app/germanybluetooth/bluetooth/BleService;

    invoke-static {v1, v5}, Lcom/delan/app/germanybluetooth/bluetooth/BleService;->access$1602(Lcom/delan/app/germanybluetooth/bluetooth/BleService;I)I

    .line 712
    const-string v1, "uiHandler == null"

    invoke-static {v1}, Lcom/apkfuns/logutils/LogUtils;->e(Ljava/lang/Object;)V

    goto/16 :goto_279

    .line 721
    :cond_3ff
    iget-object v1, p0, Lcom/delan/app/germanybluetooth/bluetooth/BleService$4;->this$0:Lcom/delan/app/germanybluetooth/bluetooth/BleService;

    invoke-static {v1, v5}, Lcom/delan/app/germanybluetooth/bluetooth/BleService;->access$1702(Lcom/delan/app/germanybluetooth/bluetooth/BleService;I)I

    .line 722
    const-string v1, "uiHandler == null"

    invoke-static {v1}, Lcom/apkfuns/logutils/LogUtils;->e(Ljava/lang/Object;)V

    goto/16 :goto_2a5

    .line 731
    :cond_40b
    iget-object v1, p0, Lcom/delan/app/germanybluetooth/bluetooth/BleService$4;->this$0:Lcom/delan/app/germanybluetooth/bluetooth/BleService;

    invoke-static {v1, v5}, Lcom/delan/app/germanybluetooth/bluetooth/BleService;->access$1802(Lcom/delan/app/germanybluetooth/bluetooth/BleService;I)I

    .line 732
    const-string v1, "uiHandler == null"

    invoke-static {v1}, Lcom/apkfuns/logutils/LogUtils;->e(Ljava/lang/Object;)V

    goto/16 :goto_2d1

    .line 741
    :cond_417
    iget-object v1, p0, Lcom/delan/app/germanybluetooth/bluetooth/BleService$4;->this$0:Lcom/delan/app/germanybluetooth/bluetooth/BleService;

    invoke-static {v1, v5}, Lcom/delan/app/germanybluetooth/bluetooth/BleService;->access$1902(Lcom/delan/app/germanybluetooth/bluetooth/BleService;I)I

    .line 742
    const-string v1, "uiHandler == null"

    invoke-static {v1}, Lcom/apkfuns/logutils/LogUtils;->e(Ljava/lang/Object;)V

    goto/16 :goto_2fd

    .line 751
    :cond_423
    iget-object v1, p0, Lcom/delan/app/germanybluetooth/bluetooth/BleService$4;->this$0:Lcom/delan/app/germanybluetooth/bluetooth/BleService;

    invoke-static {v1, v5}, Lcom/delan/app/germanybluetooth/bluetooth/BleService;->access$2002(Lcom/delan/app/germanybluetooth/bluetooth/BleService;I)I

    .line 752
    const-string v1, "uiHandler == null"

    invoke-static {v1}, Lcom/apkfuns/logutils/LogUtils;->e(Ljava/lang/Object;)V

    goto/16 :goto_329

    .line 761
    :cond_42f
    iget-object v1, p0, Lcom/delan/app/germanybluetooth/bluetooth/BleService$4;->this$0:Lcom/delan/app/germanybluetooth/bluetooth/BleService;

    invoke-static {v1, v5}, Lcom/delan/app/germanybluetooth/bluetooth/BleService;->access$2102(Lcom/delan/app/germanybluetooth/bluetooth/BleService;I)I

    .line 762
    const-string v1, "uiHandler == null"

    invoke-static {v1}, Lcom/apkfuns/logutils/LogUtils;->e(Ljava/lang/Object;)V

    goto/16 :goto_4

    .line 572
    :catch_43b
    move-exception v0

    .line 573
    .local v0, "e":Ljava/lang/InterruptedException;
    :try_start_43c
    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V
    :try_end_43f
    .catchall {:try_start_43c .. :try_end_43f} :catchall_869

    .line 575
    iget-object v1, p0, Lcom/delan/app/germanybluetooth/bluetooth/BleService$4;->this$0:Lcom/delan/app/germanybluetooth/bluetooth/BleService;

    invoke-static {v1}, Lcom/delan/app/germanybluetooth/bluetooth/BleService;->access$300(Lcom/delan/app/germanybluetooth/bluetooth/BleService;)I

    move-result v1

    if-eq v1, v4, :cond_46b

    .line 576
    iget-object v1, p0, Lcom/delan/app/germanybluetooth/bluetooth/BleService$4;->this$0:Lcom/delan/app/germanybluetooth/bluetooth/BleService;

    invoke-static {v1}, Lcom/delan/app/germanybluetooth/bluetooth/BleService;->access$306(Lcom/delan/app/germanybluetooth/bluetooth/BleService;)I

    move-result v1

    if-nez v1, :cond_46b

    .line 577
    iget-object v1, p0, Lcom/delan/app/germanybluetooth/bluetooth/BleService$4;->this$0:Lcom/delan/app/germanybluetooth/bluetooth/BleService;

    invoke-static {v1, v4}, Lcom/delan/app/germanybluetooth/bluetooth/BleService;->access$302(Lcom/delan/app/germanybluetooth/bluetooth/BleService;I)I

    .line 578
    iget-object v1, p0, Lcom/delan/app/germanybluetooth/bluetooth/BleService$4;->this$0:Lcom/delan/app/germanybluetooth/bluetooth/BleService;

    invoke-static {v1}, Lcom/delan/app/germanybluetooth/bluetooth/BleService;->access$100(Lcom/delan/app/germanybluetooth/bluetooth/BleService;)Landroid/os/Handler;

    move-result-object v1

    if-eqz v1, :cond_785

    .line 579
    iget-object v1, p0, Lcom/delan/app/germanybluetooth/bluetooth/BleService$4;->this$0:Lcom/delan/app/germanybluetooth/bluetooth/BleService;

    invoke-static {v1}, Lcom/delan/app/germanybluetooth/bluetooth/BleService;->access$100(Lcom/delan/app/germanybluetooth/bluetooth/BleService;)Landroid/os/Handler;

    move-result-object v1

    const-string v2, "47e9ee10-47e9-11e4-8939-164230d1df67"

    invoke-virtual {v1, v6, v2}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V

    .line 585
    :cond_46b
    :goto_46b
    iget-object v1, p0, Lcom/delan/app/germanybluetooth/bluetooth/BleService$4;->this$0:Lcom/delan/app/germanybluetooth/bluetooth/BleService;

    invoke-static {v1}, Lcom/delan/app/germanybluetooth/bluetooth/BleService;->access$400(Lcom/delan/app/germanybluetooth/bluetooth/BleService;)I

    move-result v1

    if-eq v1, v4, :cond_497

    .line 586
    iget-object v1, p0, Lcom/delan/app/germanybluetooth/bluetooth/BleService$4;->this$0:Lcom/delan/app/germanybluetooth/bluetooth/BleService;

    invoke-static {v1}, Lcom/delan/app/germanybluetooth/bluetooth/BleService;->access$406(Lcom/delan/app/germanybluetooth/bluetooth/BleService;)I

    move-result v1

    if-nez v1, :cond_497

    .line 587
    iget-object v1, p0, Lcom/delan/app/germanybluetooth/bluetooth/BleService$4;->this$0:Lcom/delan/app/germanybluetooth/bluetooth/BleService;

    invoke-static {v1, v4}, Lcom/delan/app/germanybluetooth/bluetooth/BleService;->access$402(Lcom/delan/app/germanybluetooth/bluetooth/BleService;I)I

    .line 588
    iget-object v1, p0, Lcom/delan/app/germanybluetooth/bluetooth/BleService$4;->this$0:Lcom/delan/app/germanybluetooth/bluetooth/BleService;

    invoke-static {v1}, Lcom/delan/app/germanybluetooth/bluetooth/BleService;->access$100(Lcom/delan/app/germanybluetooth/bluetooth/BleService;)Landroid/os/Handler;

    move-result-object v1

    if-eqz v1, :cond_791

    .line 589
    iget-object v1, p0, Lcom/delan/app/germanybluetooth/bluetooth/BleService$4;->this$0:Lcom/delan/app/germanybluetooth/bluetooth/BleService;

    invoke-static {v1}, Lcom/delan/app/germanybluetooth/bluetooth/BleService;->access$100(Lcom/delan/app/germanybluetooth/bluetooth/BleService;)Landroid/os/Handler;

    move-result-object v1

    const-string v2, "47e9ee11-47e9-11e4-8939-164230d1df67"

    invoke-virtual {v1, v6, v2}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V

    .line 595
    :cond_497
    :goto_497
    iget-object v1, p0, Lcom/delan/app/germanybluetooth/bluetooth/BleService$4;->this$0:Lcom/delan/app/germanybluetooth/bluetooth/BleService;

    invoke-static {v1}, Lcom/delan/app/germanybluetooth/bluetooth/BleService;->access$500(Lcom/delan/app/germanybluetooth/bluetooth/BleService;)I

    move-result v1

    if-eq v1, v4, :cond_4c3

    .line 596
    iget-object v1, p0, Lcom/delan/app/germanybluetooth/bluetooth/BleService$4;->this$0:Lcom/delan/app/germanybluetooth/bluetooth/BleService;

    invoke-static {v1}, Lcom/delan/app/germanybluetooth/bluetooth/BleService;->access$506(Lcom/delan/app/germanybluetooth/bluetooth/BleService;)I

    move-result v1

    if-nez v1, :cond_4c3

    .line 597
    iget-object v1, p0, Lcom/delan/app/germanybluetooth/bluetooth/BleService$4;->this$0:Lcom/delan/app/germanybluetooth/bluetooth/BleService;

    invoke-static {v1, v4}, Lcom/delan/app/germanybluetooth/bluetooth/BleService;->access$502(Lcom/delan/app/germanybluetooth/bluetooth/BleService;I)I

    .line 598
    iget-object v1, p0, Lcom/delan/app/germanybluetooth/bluetooth/BleService$4;->this$0:Lcom/delan/app/germanybluetooth/bluetooth/BleService;

    invoke-static {v1}, Lcom/delan/app/germanybluetooth/bluetooth/BleService;->access$100(Lcom/delan/app/germanybluetooth/bluetooth/BleService;)Landroid/os/Handler;

    move-result-object v1

    if-eqz v1, :cond_79d

    .line 599
    iget-object v1, p0, Lcom/delan/app/germanybluetooth/bluetooth/BleService$4;->this$0:Lcom/delan/app/germanybluetooth/bluetooth/BleService;

    invoke-static {v1}, Lcom/delan/app/germanybluetooth/bluetooth/BleService;->access$100(Lcom/delan/app/germanybluetooth/bluetooth/BleService;)Landroid/os/Handler;

    move-result-object v1

    const-string v2, "47e9ee12-47e9-11e4-8939-164230d1df67"

    invoke-virtual {v1, v6, v2}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V

    .line 605
    :cond_4c3
    :goto_4c3
    iget-object v1, p0, Lcom/delan/app/germanybluetooth/bluetooth/BleService$4;->this$0:Lcom/delan/app/germanybluetooth/bluetooth/BleService;

    invoke-static {v1}, Lcom/delan/app/germanybluetooth/bluetooth/BleService;->access$600(Lcom/delan/app/germanybluetooth/bluetooth/BleService;)I

    move-result v1

    if-eq v1, v4, :cond_4ef

    .line 606
    iget-object v1, p0, Lcom/delan/app/germanybluetooth/bluetooth/BleService$4;->this$0:Lcom/delan/app/germanybluetooth/bluetooth/BleService;

    invoke-static {v1}, Lcom/delan/app/germanybluetooth/bluetooth/BleService;->access$606(Lcom/delan/app/germanybluetooth/bluetooth/BleService;)I

    move-result v1

    if-nez v1, :cond_4ef

    .line 607
    iget-object v1, p0, Lcom/delan/app/germanybluetooth/bluetooth/BleService$4;->this$0:Lcom/delan/app/germanybluetooth/bluetooth/BleService;

    invoke-static {v1, v4}, Lcom/delan/app/germanybluetooth/bluetooth/BleService;->access$602(Lcom/delan/app/germanybluetooth/bluetooth/BleService;I)I

    .line 608
    iget-object v1, p0, Lcom/delan/app/germanybluetooth/bluetooth/BleService$4;->this$0:Lcom/delan/app/germanybluetooth/bluetooth/BleService;

    invoke-static {v1}, Lcom/delan/app/germanybluetooth/bluetooth/BleService;->access$100(Lcom/delan/app/germanybluetooth/bluetooth/BleService;)Landroid/os/Handler;

    move-result-object v1

    if-eqz v1, :cond_7a9

    .line 609
    iget-object v1, p0, Lcom/delan/app/germanybluetooth/bluetooth/BleService$4;->this$0:Lcom/delan/app/germanybluetooth/bluetooth/BleService;

    invoke-static {v1}, Lcom/delan/app/germanybluetooth/bluetooth/BleService;->access$100(Lcom/delan/app/germanybluetooth/bluetooth/BleService;)Landroid/os/Handler;

    move-result-object v1

    const-string v2, "47e9ee13-47e9-11e4-8939-164230d1df67"

    invoke-virtual {v1, v6, v2}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V

    .line 615
    :cond_4ef
    :goto_4ef
    iget-object v1, p0, Lcom/delan/app/germanybluetooth/bluetooth/BleService$4;->this$0:Lcom/delan/app/germanybluetooth/bluetooth/BleService;

    invoke-static {v1}, Lcom/delan/app/germanybluetooth/bluetooth/BleService;->access$700(Lcom/delan/app/germanybluetooth/bluetooth/BleService;)I

    move-result v1

    if-eq v1, v4, :cond_51b

    .line 616
    iget-object v1, p0, Lcom/delan/app/germanybluetooth/bluetooth/BleService$4;->this$0:Lcom/delan/app/germanybluetooth/bluetooth/BleService;

    invoke-static {v1}, Lcom/delan/app/germanybluetooth/bluetooth/BleService;->access$706(Lcom/delan/app/germanybluetooth/bluetooth/BleService;)I

    move-result v1

    if-nez v1, :cond_51b

    .line 617
    iget-object v1, p0, Lcom/delan/app/germanybluetooth/bluetooth/BleService$4;->this$0:Lcom/delan/app/germanybluetooth/bluetooth/BleService;

    invoke-static {v1, v4}, Lcom/delan/app/germanybluetooth/bluetooth/BleService;->access$702(Lcom/delan/app/germanybluetooth/bluetooth/BleService;I)I

    .line 618
    iget-object v1, p0, Lcom/delan/app/germanybluetooth/bluetooth/BleService$4;->this$0:Lcom/delan/app/germanybluetooth/bluetooth/BleService;

    invoke-static {v1}, Lcom/delan/app/germanybluetooth/bluetooth/BleService;->access$100(Lcom/delan/app/germanybluetooth/bluetooth/BleService;)Landroid/os/Handler;

    move-result-object v1

    if-eqz v1, :cond_7b5

    .line 619
    iget-object v1, p0, Lcom/delan/app/germanybluetooth/bluetooth/BleService$4;->this$0:Lcom/delan/app/germanybluetooth/bluetooth/BleService;

    invoke-static {v1}, Lcom/delan/app/germanybluetooth/bluetooth/BleService;->access$100(Lcom/delan/app/germanybluetooth/bluetooth/BleService;)Landroid/os/Handler;

    move-result-object v1

    const-string v2, "47e9ee14-47e9-11e4-8939-164230d1df67"

    invoke-virtual {v1, v6, v2}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V

    .line 625
    :cond_51b
    :goto_51b
    iget-object v1, p0, Lcom/delan/app/germanybluetooth/bluetooth/BleService$4;->this$0:Lcom/delan/app/germanybluetooth/bluetooth/BleService;

    invoke-static {v1}, Lcom/delan/app/germanybluetooth/bluetooth/BleService;->access$800(Lcom/delan/app/germanybluetooth/bluetooth/BleService;)I

    move-result v1

    if-eq v1, v4, :cond_547

    .line 626
    iget-object v1, p0, Lcom/delan/app/germanybluetooth/bluetooth/BleService$4;->this$0:Lcom/delan/app/germanybluetooth/bluetooth/BleService;

    invoke-static {v1}, Lcom/delan/app/germanybluetooth/bluetooth/BleService;->access$806(Lcom/delan/app/germanybluetooth/bluetooth/BleService;)I

    move-result v1

    if-nez v1, :cond_547

    .line 627
    iget-object v1, p0, Lcom/delan/app/germanybluetooth/bluetooth/BleService$4;->this$0:Lcom/delan/app/germanybluetooth/bluetooth/BleService;

    invoke-static {v1, v4}, Lcom/delan/app/germanybluetooth/bluetooth/BleService;->access$802(Lcom/delan/app/germanybluetooth/bluetooth/BleService;I)I

    .line 628
    iget-object v1, p0, Lcom/delan/app/germanybluetooth/bluetooth/BleService$4;->this$0:Lcom/delan/app/germanybluetooth/bluetooth/BleService;

    invoke-static {v1}, Lcom/delan/app/germanybluetooth/bluetooth/BleService;->access$100(Lcom/delan/app/germanybluetooth/bluetooth/BleService;)Landroid/os/Handler;

    move-result-object v1

    if-eqz v1, :cond_7c1

    .line 629
    iget-object v1, p0, Lcom/delan/app/germanybluetooth/bluetooth/BleService$4;->this$0:Lcom/delan/app/germanybluetooth/bluetooth/BleService;

    invoke-static {v1}, Lcom/delan/app/germanybluetooth/bluetooth/BleService;->access$100(Lcom/delan/app/germanybluetooth/bluetooth/BleService;)Landroid/os/Handler;

    move-result-object v1

    const-string v2, "47e9ee15-47e9-11e4-8939-164230d1df67"

    invoke-virtual {v1, v6, v2}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V

    .line 635
    :cond_547
    :goto_547
    iget-object v1, p0, Lcom/delan/app/germanybluetooth/bluetooth/BleService$4;->this$0:Lcom/delan/app/germanybluetooth/bluetooth/BleService;

    invoke-static {v1}, Lcom/delan/app/germanybluetooth/bluetooth/BleService;->access$900(Lcom/delan/app/germanybluetooth/bluetooth/BleService;)I

    move-result v1

    if-eq v1, v4, :cond_573

    .line 636
    iget-object v1, p0, Lcom/delan/app/germanybluetooth/bluetooth/BleService$4;->this$0:Lcom/delan/app/germanybluetooth/bluetooth/BleService;

    invoke-static {v1}, Lcom/delan/app/germanybluetooth/bluetooth/BleService;->access$906(Lcom/delan/app/germanybluetooth/bluetooth/BleService;)I

    move-result v1

    if-nez v1, :cond_573

    .line 637
    iget-object v1, p0, Lcom/delan/app/germanybluetooth/bluetooth/BleService$4;->this$0:Lcom/delan/app/germanybluetooth/bluetooth/BleService;

    invoke-static {v1, v4}, Lcom/delan/app/germanybluetooth/bluetooth/BleService;->access$902(Lcom/delan/app/germanybluetooth/bluetooth/BleService;I)I

    .line 638
    iget-object v1, p0, Lcom/delan/app/germanybluetooth/bluetooth/BleService$4;->this$0:Lcom/delan/app/germanybluetooth/bluetooth/BleService;

    invoke-static {v1}, Lcom/delan/app/germanybluetooth/bluetooth/BleService;->access$100(Lcom/delan/app/germanybluetooth/bluetooth/BleService;)Landroid/os/Handler;

    move-result-object v1

    if-eqz v1, :cond_7cd

    .line 639
    iget-object v1, p0, Lcom/delan/app/germanybluetooth/bluetooth/BleService$4;->this$0:Lcom/delan/app/germanybluetooth/bluetooth/BleService;

    invoke-static {v1}, Lcom/delan/app/germanybluetooth/bluetooth/BleService;->access$100(Lcom/delan/app/germanybluetooth/bluetooth/BleService;)Landroid/os/Handler;

    move-result-object v1

    const-string v2, "47e9ee16-47e9-11e4-8939-164230d1df67"

    invoke-virtual {v1, v6, v2}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V

    .line 645
    :cond_573
    :goto_573
    iget-object v1, p0, Lcom/delan/app/germanybluetooth/bluetooth/BleService$4;->this$0:Lcom/delan/app/germanybluetooth/bluetooth/BleService;

    invoke-static {v1}, Lcom/delan/app/germanybluetooth/bluetooth/BleService;->access$1000(Lcom/delan/app/germanybluetooth/bluetooth/BleService;)I

    move-result v1

    if-eq v1, v4, :cond_59f

    .line 646
    iget-object v1, p0, Lcom/delan/app/germanybluetooth/bluetooth/BleService$4;->this$0:Lcom/delan/app/germanybluetooth/bluetooth/BleService;

    invoke-static {v1}, Lcom/delan/app/germanybluetooth/bluetooth/BleService;->access$1006(Lcom/delan/app/germanybluetooth/bluetooth/BleService;)I

    move-result v1

    if-nez v1, :cond_59f

    .line 647
    iget-object v1, p0, Lcom/delan/app/germanybluetooth/bluetooth/BleService$4;->this$0:Lcom/delan/app/germanybluetooth/bluetooth/BleService;

    invoke-static {v1, v4}, Lcom/delan/app/germanybluetooth/bluetooth/BleService;->access$1002(Lcom/delan/app/germanybluetooth/bluetooth/BleService;I)I

    .line 648
    iget-object v1, p0, Lcom/delan/app/germanybluetooth/bluetooth/BleService$4;->this$0:Lcom/delan/app/germanybluetooth/bluetooth/BleService;

    invoke-static {v1}, Lcom/delan/app/germanybluetooth/bluetooth/BleService;->access$100(Lcom/delan/app/germanybluetooth/bluetooth/BleService;)Landroid/os/Handler;

    move-result-object v1

    if-eqz v1, :cond_7d9

    .line 649
    iget-object v1, p0, Lcom/delan/app/germanybluetooth/bluetooth/BleService$4;->this$0:Lcom/delan/app/germanybluetooth/bluetooth/BleService;

    invoke-static {v1}, Lcom/delan/app/germanybluetooth/bluetooth/BleService;->access$100(Lcom/delan/app/germanybluetooth/bluetooth/BleService;)Landroid/os/Handler;

    move-result-object v1

    const-string v2, "47e9ee20-47e9-11e4-8939-164230d1df67"

    invoke-virtual {v1, v6, v2}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V

    .line 655
    :cond_59f
    :goto_59f
    iget-object v1, p0, Lcom/delan/app/germanybluetooth/bluetooth/BleService$4;->this$0:Lcom/delan/app/germanybluetooth/bluetooth/BleService;

    invoke-static {v1}, Lcom/delan/app/germanybluetooth/bluetooth/BleService;->access$1100(Lcom/delan/app/germanybluetooth/bluetooth/BleService;)I

    move-result v1

    if-eq v1, v4, :cond_5cb

    .line 656
    iget-object v1, p0, Lcom/delan/app/germanybluetooth/bluetooth/BleService$4;->this$0:Lcom/delan/app/germanybluetooth/bluetooth/BleService;

    invoke-static {v1}, Lcom/delan/app/germanybluetooth/bluetooth/BleService;->access$1106(Lcom/delan/app/germanybluetooth/bluetooth/BleService;)I

    move-result v1

    if-nez v1, :cond_5cb

    .line 657
    iget-object v1, p0, Lcom/delan/app/germanybluetooth/bluetooth/BleService$4;->this$0:Lcom/delan/app/germanybluetooth/bluetooth/BleService;

    invoke-static {v1, v4}, Lcom/delan/app/germanybluetooth/bluetooth/BleService;->access$1102(Lcom/delan/app/germanybluetooth/bluetooth/BleService;I)I

    .line 658
    iget-object v1, p0, Lcom/delan/app/germanybluetooth/bluetooth/BleService$4;->this$0:Lcom/delan/app/germanybluetooth/bluetooth/BleService;

    invoke-static {v1}, Lcom/delan/app/germanybluetooth/bluetooth/BleService;->access$100(Lcom/delan/app/germanybluetooth/bluetooth/BleService;)Landroid/os/Handler;

    move-result-object v1

    if-eqz v1, :cond_7e5

    .line 659
    iget-object v1, p0, Lcom/delan/app/germanybluetooth/bluetooth/BleService$4;->this$0:Lcom/delan/app/germanybluetooth/bluetooth/BleService;

    invoke-static {v1}, Lcom/delan/app/germanybluetooth/bluetooth/BleService;->access$100(Lcom/delan/app/germanybluetooth/bluetooth/BleService;)Landroid/os/Handler;

    move-result-object v1

    const-string v2, "47e9ee2a-47e9-11e4-8939-164230d1df67"

    invoke-virtual {v1, v6, v2}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V

    .line 665
    :cond_5cb
    :goto_5cb
    iget-object v1, p0, Lcom/delan/app/germanybluetooth/bluetooth/BleService$4;->this$0:Lcom/delan/app/germanybluetooth/bluetooth/BleService;

    invoke-static {v1}, Lcom/delan/app/germanybluetooth/bluetooth/BleService;->access$1200(Lcom/delan/app/germanybluetooth/bluetooth/BleService;)I

    move-result v1

    if-eq v1, v4, :cond_5f7

    .line 666
    iget-object v1, p0, Lcom/delan/app/germanybluetooth/bluetooth/BleService$4;->this$0:Lcom/delan/app/germanybluetooth/bluetooth/BleService;

    invoke-static {v1}, Lcom/delan/app/germanybluetooth/bluetooth/BleService;->access$1206(Lcom/delan/app/germanybluetooth/bluetooth/BleService;)I

    move-result v1

    if-nez v1, :cond_5f7

    .line 667
    iget-object v1, p0, Lcom/delan/app/germanybluetooth/bluetooth/BleService$4;->this$0:Lcom/delan/app/germanybluetooth/bluetooth/BleService;

    invoke-static {v1, v4}, Lcom/delan/app/germanybluetooth/bluetooth/BleService;->access$1202(Lcom/delan/app/germanybluetooth/bluetooth/BleService;I)I

    .line 668
    iget-object v1, p0, Lcom/delan/app/germanybluetooth/bluetooth/BleService$4;->this$0:Lcom/delan/app/germanybluetooth/bluetooth/BleService;

    invoke-static {v1}, Lcom/delan/app/germanybluetooth/bluetooth/BleService;->access$100(Lcom/delan/app/germanybluetooth/bluetooth/BleService;)Landroid/os/Handler;

    move-result-object v1

    if-eqz v1, :cond_7f1

    .line 669
    iget-object v1, p0, Lcom/delan/app/germanybluetooth/bluetooth/BleService$4;->this$0:Lcom/delan/app/germanybluetooth/bluetooth/BleService;

    invoke-static {v1}, Lcom/delan/app/germanybluetooth/bluetooth/BleService;->access$100(Lcom/delan/app/germanybluetooth/bluetooth/BleService;)Landroid/os/Handler;

    move-result-object v1

    const-string v2, "47e9ee2b-47e9-11e4-8939-164230d1df67"

    invoke-virtual {v1, v6, v2}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V

    .line 675
    :cond_5f7
    :goto_5f7
    iget-object v1, p0, Lcom/delan/app/germanybluetooth/bluetooth/BleService$4;->this$0:Lcom/delan/app/germanybluetooth/bluetooth/BleService;

    invoke-static {v1}, Lcom/delan/app/germanybluetooth/bluetooth/BleService;->access$1300(Lcom/delan/app/germanybluetooth/bluetooth/BleService;)I

    move-result v1

    if-eq v1, v4, :cond_623

    .line 676
    iget-object v1, p0, Lcom/delan/app/germanybluetooth/bluetooth/BleService$4;->this$0:Lcom/delan/app/germanybluetooth/bluetooth/BleService;

    invoke-static {v1}, Lcom/delan/app/germanybluetooth/bluetooth/BleService;->access$1306(Lcom/delan/app/germanybluetooth/bluetooth/BleService;)I

    move-result v1

    if-nez v1, :cond_623

    .line 677
    iget-object v1, p0, Lcom/delan/app/germanybluetooth/bluetooth/BleService$4;->this$0:Lcom/delan/app/germanybluetooth/bluetooth/BleService;

    invoke-static {v1, v4}, Lcom/delan/app/germanybluetooth/bluetooth/BleService;->access$1302(Lcom/delan/app/germanybluetooth/bluetooth/BleService;I)I

    .line 678
    iget-object v1, p0, Lcom/delan/app/germanybluetooth/bluetooth/BleService$4;->this$0:Lcom/delan/app/germanybluetooth/bluetooth/BleService;

    invoke-static {v1}, Lcom/delan/app/germanybluetooth/bluetooth/BleService;->access$100(Lcom/delan/app/germanybluetooth/bluetooth/BleService;)Landroid/os/Handler;

    move-result-object v1

    if-eqz v1, :cond_7fd

    .line 679
    iget-object v1, p0, Lcom/delan/app/germanybluetooth/bluetooth/BleService$4;->this$0:Lcom/delan/app/germanybluetooth/bluetooth/BleService;

    invoke-static {v1}, Lcom/delan/app/germanybluetooth/bluetooth/BleService;->access$100(Lcom/delan/app/germanybluetooth/bluetooth/BleService;)Landroid/os/Handler;

    move-result-object v1

    const-string v2, "47e9ef52-47e9-11e4-8939-164230d1df67"

    invoke-virtual {v1, v6, v2}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V

    .line 685
    :cond_623
    :goto_623
    iget-object v1, p0, Lcom/delan/app/germanybluetooth/bluetooth/BleService$4;->this$0:Lcom/delan/app/germanybluetooth/bluetooth/BleService;

    invoke-static {v1}, Lcom/delan/app/germanybluetooth/bluetooth/BleService;->access$1400(Lcom/delan/app/germanybluetooth/bluetooth/BleService;)I

    move-result v1

    if-eq v1, v4, :cond_64f

    .line 686
    iget-object v1, p0, Lcom/delan/app/germanybluetooth/bluetooth/BleService$4;->this$0:Lcom/delan/app/germanybluetooth/bluetooth/BleService;

    invoke-static {v1}, Lcom/delan/app/germanybluetooth/bluetooth/BleService;->access$1406(Lcom/delan/app/germanybluetooth/bluetooth/BleService;)I

    move-result v1

    if-nez v1, :cond_64f

    .line 687
    iget-object v1, p0, Lcom/delan/app/germanybluetooth/bluetooth/BleService$4;->this$0:Lcom/delan/app/germanybluetooth/bluetooth/BleService;

    invoke-static {v1, v4}, Lcom/delan/app/germanybluetooth/bluetooth/BleService;->access$1402(Lcom/delan/app/germanybluetooth/bluetooth/BleService;I)I

    .line 688
    iget-object v1, p0, Lcom/delan/app/germanybluetooth/bluetooth/BleService$4;->this$0:Lcom/delan/app/germanybluetooth/bluetooth/BleService;

    invoke-static {v1}, Lcom/delan/app/germanybluetooth/bluetooth/BleService;->access$100(Lcom/delan/app/germanybluetooth/bluetooth/BleService;)Landroid/os/Handler;

    move-result-object v1

    if-eqz v1, :cond_809

    .line 689
    iget-object v1, p0, Lcom/delan/app/germanybluetooth/bluetooth/BleService$4;->this$0:Lcom/delan/app/germanybluetooth/bluetooth/BleService;

    invoke-static {v1}, Lcom/delan/app/germanybluetooth/bluetooth/BleService;->access$100(Lcom/delan/app/germanybluetooth/bluetooth/BleService;)Landroid/os/Handler;

    move-result-object v1

    const-string v2, "47e9ef53-47e9-11e4-8939-164230d1df67"

    invoke-virtual {v1, v6, v2}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V

    .line 695
    :cond_64f
    :goto_64f
    iget-object v1, p0, Lcom/delan/app/germanybluetooth/bluetooth/BleService$4;->this$0:Lcom/delan/app/germanybluetooth/bluetooth/BleService;

    invoke-static {v1}, Lcom/delan/app/germanybluetooth/bluetooth/BleService;->access$1500(Lcom/delan/app/germanybluetooth/bluetooth/BleService;)I

    move-result v1

    if-eq v1, v4, :cond_67b

    .line 696
    iget-object v1, p0, Lcom/delan/app/germanybluetooth/bluetooth/BleService$4;->this$0:Lcom/delan/app/germanybluetooth/bluetooth/BleService;

    invoke-static {v1}, Lcom/delan/app/germanybluetooth/bluetooth/BleService;->access$1506(Lcom/delan/app/germanybluetooth/bluetooth/BleService;)I

    move-result v1

    if-nez v1, :cond_67b

    .line 697
    iget-object v1, p0, Lcom/delan/app/germanybluetooth/bluetooth/BleService$4;->this$0:Lcom/delan/app/germanybluetooth/bluetooth/BleService;

    invoke-static {v1, v4}, Lcom/delan/app/germanybluetooth/bluetooth/BleService;->access$1502(Lcom/delan/app/germanybluetooth/bluetooth/BleService;I)I

    .line 698
    iget-object v1, p0, Lcom/delan/app/germanybluetooth/bluetooth/BleService$4;->this$0:Lcom/delan/app/germanybluetooth/bluetooth/BleService;

    invoke-static {v1}, Lcom/delan/app/germanybluetooth/bluetooth/BleService;->access$100(Lcom/delan/app/germanybluetooth/bluetooth/BleService;)Landroid/os/Handler;

    move-result-object v1

    if-eqz v1, :cond_815

    .line 699
    iget-object v1, p0, Lcom/delan/app/germanybluetooth/bluetooth/BleService$4;->this$0:Lcom/delan/app/germanybluetooth/bluetooth/BleService;

    invoke-static {v1}, Lcom/delan/app/germanybluetooth/bluetooth/BleService;->access$100(Lcom/delan/app/germanybluetooth/bluetooth/BleService;)Landroid/os/Handler;

    move-result-object v1

    const-string v2, "47e9ef54-47e9-11e4-8939-164230d1df67"

    invoke-virtual {v1, v6, v2}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V

    .line 705
    :cond_67b
    :goto_67b
    iget-object v1, p0, Lcom/delan/app/germanybluetooth/bluetooth/BleService$4;->this$0:Lcom/delan/app/germanybluetooth/bluetooth/BleService;

    invoke-static {v1}, Lcom/delan/app/germanybluetooth/bluetooth/BleService;->access$1600(Lcom/delan/app/germanybluetooth/bluetooth/BleService;)I

    move-result v1

    if-eq v1, v4, :cond_6a7

    .line 706
    iget-object v1, p0, Lcom/delan/app/germanybluetooth/bluetooth/BleService$4;->this$0:Lcom/delan/app/germanybluetooth/bluetooth/BleService;

    invoke-static {v1}, Lcom/delan/app/germanybluetooth/bluetooth/BleService;->access$1606(Lcom/delan/app/germanybluetooth/bluetooth/BleService;)I

    move-result v1

    if-nez v1, :cond_6a7

    .line 707
    iget-object v1, p0, Lcom/delan/app/germanybluetooth/bluetooth/BleService$4;->this$0:Lcom/delan/app/germanybluetooth/bluetooth/BleService;

    invoke-static {v1, v4}, Lcom/delan/app/germanybluetooth/bluetooth/BleService;->access$1602(Lcom/delan/app/germanybluetooth/bluetooth/BleService;I)I

    .line 708
    iget-object v1, p0, Lcom/delan/app/germanybluetooth/bluetooth/BleService$4;->this$0:Lcom/delan/app/germanybluetooth/bluetooth/BleService;

    invoke-static {v1}, Lcom/delan/app/germanybluetooth/bluetooth/BleService;->access$100(Lcom/delan/app/germanybluetooth/bluetooth/BleService;)Landroid/os/Handler;

    move-result-object v1

    if-eqz v1, :cond_821

    .line 709
    iget-object v1, p0, Lcom/delan/app/germanybluetooth/bluetooth/BleService$4;->this$0:Lcom/delan/app/germanybluetooth/bluetooth/BleService;

    invoke-static {v1}, Lcom/delan/app/germanybluetooth/bluetooth/BleService;->access$100(Lcom/delan/app/germanybluetooth/bluetooth/BleService;)Landroid/os/Handler;

    move-result-object v1

    const-string v2, "47e9ef55-47e9-11e4-8939-164230d1df67"

    invoke-virtual {v1, v6, v2}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V

    .line 715
    :cond_6a7
    :goto_6a7
    iget-object v1, p0, Lcom/delan/app/germanybluetooth/bluetooth/BleService$4;->this$0:Lcom/delan/app/germanybluetooth/bluetooth/BleService;

    invoke-static {v1}, Lcom/delan/app/germanybluetooth/bluetooth/BleService;->access$1700(Lcom/delan/app/germanybluetooth/bluetooth/BleService;)I

    move-result v1

    if-eq v1, v4, :cond_6d3

    .line 716
    iget-object v1, p0, Lcom/delan/app/germanybluetooth/bluetooth/BleService$4;->this$0:Lcom/delan/app/germanybluetooth/bluetooth/BleService;

    invoke-static {v1}, Lcom/delan/app/germanybluetooth/bluetooth/BleService;->access$1706(Lcom/delan/app/germanybluetooth/bluetooth/BleService;)I

    move-result v1

    if-nez v1, :cond_6d3

    .line 717
    iget-object v1, p0, Lcom/delan/app/germanybluetooth/bluetooth/BleService$4;->this$0:Lcom/delan/app/germanybluetooth/bluetooth/BleService;

    invoke-static {v1, v4}, Lcom/delan/app/germanybluetooth/bluetooth/BleService;->access$1702(Lcom/delan/app/germanybluetooth/bluetooth/BleService;I)I

    .line 718
    iget-object v1, p0, Lcom/delan/app/germanybluetooth/bluetooth/BleService$4;->this$0:Lcom/delan/app/germanybluetooth/bluetooth/BleService;

    invoke-static {v1}, Lcom/delan/app/germanybluetooth/bluetooth/BleService;->access$100(Lcom/delan/app/germanybluetooth/bluetooth/BleService;)Landroid/os/Handler;

    move-result-object v1

    if-eqz v1, :cond_82d

    .line 719
    iget-object v1, p0, Lcom/delan/app/germanybluetooth/bluetooth/BleService$4;->this$0:Lcom/delan/app/germanybluetooth/bluetooth/BleService;

    invoke-static {v1}, Lcom/delan/app/germanybluetooth/bluetooth/BleService;->access$100(Lcom/delan/app/germanybluetooth/bluetooth/BleService;)Landroid/os/Handler;

    move-result-object v1

    const-string v2, "47e9ef56-47e9-11e4-8939-164230d1df67"

    invoke-virtual {v1, v6, v2}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V

    .line 725
    :cond_6d3
    :goto_6d3
    iget-object v1, p0, Lcom/delan/app/germanybluetooth/bluetooth/BleService$4;->this$0:Lcom/delan/app/germanybluetooth/bluetooth/BleService;

    invoke-static {v1}, Lcom/delan/app/germanybluetooth/bluetooth/BleService;->access$1800(Lcom/delan/app/germanybluetooth/bluetooth/BleService;)I

    move-result v1

    if-eq v1, v4, :cond_6ff

    .line 726
    iget-object v1, p0, Lcom/delan/app/germanybluetooth/bluetooth/BleService$4;->this$0:Lcom/delan/app/germanybluetooth/bluetooth/BleService;

    invoke-static {v1}, Lcom/delan/app/germanybluetooth/bluetooth/BleService;->access$1806(Lcom/delan/app/germanybluetooth/bluetooth/BleService;)I

    move-result v1

    if-nez v1, :cond_6ff

    .line 727
    iget-object v1, p0, Lcom/delan/app/germanybluetooth/bluetooth/BleService$4;->this$0:Lcom/delan/app/germanybluetooth/bluetooth/BleService;

    invoke-static {v1, v4}, Lcom/delan/app/germanybluetooth/bluetooth/BleService;->access$1802(Lcom/delan/app/germanybluetooth/bluetooth/BleService;I)I

    .line 728
    iget-object v1, p0, Lcom/delan/app/germanybluetooth/bluetooth/BleService$4;->this$0:Lcom/delan/app/germanybluetooth/bluetooth/BleService;

    invoke-static {v1}, Lcom/delan/app/germanybluetooth/bluetooth/BleService;->access$100(Lcom/delan/app/germanybluetooth/bluetooth/BleService;)Landroid/os/Handler;

    move-result-object v1

    if-eqz v1, :cond_839

    .line 729
    iget-object v1, p0, Lcom/delan/app/germanybluetooth/bluetooth/BleService$4;->this$0:Lcom/delan/app/germanybluetooth/bluetooth/BleService;

    invoke-static {v1}, Lcom/delan/app/germanybluetooth/bluetooth/BleService;->access$100(Lcom/delan/app/germanybluetooth/bluetooth/BleService;)Landroid/os/Handler;

    move-result-object v1

    const-string v2, "47e9ef57-47e9-11e4-8939-164230d1df67"

    invoke-virtual {v1, v6, v2}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V

    .line 735
    :cond_6ff
    :goto_6ff
    iget-object v1, p0, Lcom/delan/app/germanybluetooth/bluetooth/BleService$4;->this$0:Lcom/delan/app/germanybluetooth/bluetooth/BleService;

    invoke-static {v1}, Lcom/delan/app/germanybluetooth/bluetooth/BleService;->access$1900(Lcom/delan/app/germanybluetooth/bluetooth/BleService;)I

    move-result v1

    if-eq v1, v4, :cond_72b

    .line 736
    iget-object v1, p0, Lcom/delan/app/germanybluetooth/bluetooth/BleService$4;->this$0:Lcom/delan/app/germanybluetooth/bluetooth/BleService;

    invoke-static {v1}, Lcom/delan/app/germanybluetooth/bluetooth/BleService;->access$1906(Lcom/delan/app/germanybluetooth/bluetooth/BleService;)I

    move-result v1

    if-nez v1, :cond_72b

    .line 737
    iget-object v1, p0, Lcom/delan/app/germanybluetooth/bluetooth/BleService$4;->this$0:Lcom/delan/app/germanybluetooth/bluetooth/BleService;

    invoke-static {v1, v4}, Lcom/delan/app/germanybluetooth/bluetooth/BleService;->access$1902(Lcom/delan/app/germanybluetooth/bluetooth/BleService;I)I

    .line 738
    iget-object v1, p0, Lcom/delan/app/germanybluetooth/bluetooth/BleService$4;->this$0:Lcom/delan/app/germanybluetooth/bluetooth/BleService;

    invoke-static {v1}, Lcom/delan/app/germanybluetooth/bluetooth/BleService;->access$100(Lcom/delan/app/germanybluetooth/bluetooth/BleService;)Landroid/os/Handler;

    move-result-object v1

    if-eqz v1, :cond_845

    .line 739
    iget-object v1, p0, Lcom/delan/app/germanybluetooth/bluetooth/BleService$4;->this$0:Lcom/delan/app/germanybluetooth/bluetooth/BleService;

    invoke-static {v1}, Lcom/delan/app/germanybluetooth/bluetooth/BleService;->access$100(Lcom/delan/app/germanybluetooth/bluetooth/BleService;)Landroid/os/Handler;

    move-result-object v1

    const-string v2, "47e9ef58-47e9-11e4-8939-164230d1df67"

    invoke-virtual {v1, v6, v2}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V

    .line 745
    :cond_72b
    :goto_72b
    iget-object v1, p0, Lcom/delan/app/germanybluetooth/bluetooth/BleService$4;->this$0:Lcom/delan/app/germanybluetooth/bluetooth/BleService;

    invoke-static {v1}, Lcom/delan/app/germanybluetooth/bluetooth/BleService;->access$2000(Lcom/delan/app/germanybluetooth/bluetooth/BleService;)I

    move-result v1

    if-eq v1, v4, :cond_757

    .line 746
    iget-object v1, p0, Lcom/delan/app/germanybluetooth/bluetooth/BleService$4;->this$0:Lcom/delan/app/germanybluetooth/bluetooth/BleService;

    invoke-static {v1}, Lcom/delan/app/germanybluetooth/bluetooth/BleService;->access$2006(Lcom/delan/app/germanybluetooth/bluetooth/BleService;)I

    move-result v1

    if-nez v1, :cond_757

    .line 747
    iget-object v1, p0, Lcom/delan/app/germanybluetooth/bluetooth/BleService$4;->this$0:Lcom/delan/app/germanybluetooth/bluetooth/BleService;

    invoke-static {v1, v4}, Lcom/delan/app/germanybluetooth/bluetooth/BleService;->access$2002(Lcom/delan/app/germanybluetooth/bluetooth/BleService;I)I

    .line 748
    iget-object v1, p0, Lcom/delan/app/germanybluetooth/bluetooth/BleService$4;->this$0:Lcom/delan/app/germanybluetooth/bluetooth/BleService;

    invoke-static {v1}, Lcom/delan/app/germanybluetooth/bluetooth/BleService;->access$100(Lcom/delan/app/germanybluetooth/bluetooth/BleService;)Landroid/os/Handler;

    move-result-object v1

    if-eqz v1, :cond_851

    .line 749
    iget-object v1, p0, Lcom/delan/app/germanybluetooth/bluetooth/BleService$4;->this$0:Lcom/delan/app/germanybluetooth/bluetooth/BleService;

    invoke-static {v1}, Lcom/delan/app/germanybluetooth/bluetooth/BleService;->access$100(Lcom/delan/app/germanybluetooth/bluetooth/BleService;)Landroid/os/Handler;

    move-result-object v1

    const-string v2, "47e9ef59-47e9-11e4-8939-164230d1df67"

    invoke-virtual {v1, v6, v2}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V

    .line 755
    :cond_757
    :goto_757
    iget-object v1, p0, Lcom/delan/app/germanybluetooth/bluetooth/BleService$4;->this$0:Lcom/delan/app/germanybluetooth/bluetooth/BleService;

    invoke-static {v1}, Lcom/delan/app/germanybluetooth/bluetooth/BleService;->access$2100(Lcom/delan/app/germanybluetooth/bluetooth/BleService;)I

    move-result v1

    if-eq v1, v4, :cond_4

    .line 756
    iget-object v1, p0, Lcom/delan/app/germanybluetooth/bluetooth/BleService$4;->this$0:Lcom/delan/app/germanybluetooth/bluetooth/BleService;

    invoke-static {v1}, Lcom/delan/app/germanybluetooth/bluetooth/BleService;->access$2106(Lcom/delan/app/germanybluetooth/bluetooth/BleService;)I

    move-result v1

    if-nez v1, :cond_4

    .line 757
    iget-object v1, p0, Lcom/delan/app/germanybluetooth/bluetooth/BleService$4;->this$0:Lcom/delan/app/germanybluetooth/bluetooth/BleService;

    invoke-static {v1, v4}, Lcom/delan/app/germanybluetooth/bluetooth/BleService;->access$2102(Lcom/delan/app/germanybluetooth/bluetooth/BleService;I)I

    .line 758
    iget-object v1, p0, Lcom/delan/app/germanybluetooth/bluetooth/BleService$4;->this$0:Lcom/delan/app/germanybluetooth/bluetooth/BleService;

    invoke-static {v1}, Lcom/delan/app/germanybluetooth/bluetooth/BleService;->access$100(Lcom/delan/app/germanybluetooth/bluetooth/BleService;)Landroid/os/Handler;

    move-result-object v1

    if-eqz v1, :cond_85d

    .line 759
    iget-object v1, p0, Lcom/delan/app/germanybluetooth/bluetooth/BleService$4;->this$0:Lcom/delan/app/germanybluetooth/bluetooth/BleService;

    invoke-static {v1}, Lcom/delan/app/germanybluetooth/bluetooth/BleService;->access$100(Lcom/delan/app/germanybluetooth/bluetooth/BleService;)Landroid/os/Handler;

    move-result-object v1

    const-string v2, "47e9ef61-47e9-11e4-8939-164230d1df67"

    invoke-virtual {v1, v6, v2}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V

    goto/16 :goto_4

    .line 581
    :cond_785
    iget-object v1, p0, Lcom/delan/app/germanybluetooth/bluetooth/BleService$4;->this$0:Lcom/delan/app/germanybluetooth/bluetooth/BleService;

    invoke-static {v1, v5}, Lcom/delan/app/germanybluetooth/bluetooth/BleService;->access$302(Lcom/delan/app/germanybluetooth/bluetooth/BleService;I)I

    .line 582
    const-string v1, "uiHandler == null"

    invoke-static {v1}, Lcom/apkfuns/logutils/LogUtils;->e(Ljava/lang/Object;)V

    goto/16 :goto_46b

    .line 591
    :cond_791
    iget-object v1, p0, Lcom/delan/app/germanybluetooth/bluetooth/BleService$4;->this$0:Lcom/delan/app/germanybluetooth/bluetooth/BleService;

    invoke-static {v1, v5}, Lcom/delan/app/germanybluetooth/bluetooth/BleService;->access$402(Lcom/delan/app/germanybluetooth/bluetooth/BleService;I)I

    .line 592
    const-string v1, "uiHandler == null"

    invoke-static {v1}, Lcom/apkfuns/logutils/LogUtils;->e(Ljava/lang/Object;)V

    goto/16 :goto_497

    .line 601
    :cond_79d
    iget-object v1, p0, Lcom/delan/app/germanybluetooth/bluetooth/BleService$4;->this$0:Lcom/delan/app/germanybluetooth/bluetooth/BleService;

    invoke-static {v1, v5}, Lcom/delan/app/germanybluetooth/bluetooth/BleService;->access$502(Lcom/delan/app/germanybluetooth/bluetooth/BleService;I)I

    .line 602
    const-string v1, "uiHandler == null"

    invoke-static {v1}, Lcom/apkfuns/logutils/LogUtils;->e(Ljava/lang/Object;)V

    goto/16 :goto_4c3

    .line 611
    :cond_7a9
    iget-object v1, p0, Lcom/delan/app/germanybluetooth/bluetooth/BleService$4;->this$0:Lcom/delan/app/germanybluetooth/bluetooth/BleService;

    invoke-static {v1, v5}, Lcom/delan/app/germanybluetooth/bluetooth/BleService;->access$602(Lcom/delan/app/germanybluetooth/bluetooth/BleService;I)I

    .line 612
    const-string v1, "uiHandler == null"

    invoke-static {v1}, Lcom/apkfuns/logutils/LogUtils;->e(Ljava/lang/Object;)V

    goto/16 :goto_4ef

    .line 621
    :cond_7b5
    iget-object v1, p0, Lcom/delan/app/germanybluetooth/bluetooth/BleService$4;->this$0:Lcom/delan/app/germanybluetooth/bluetooth/BleService;

    invoke-static {v1, v5}, Lcom/delan/app/germanybluetooth/bluetooth/BleService;->access$702(Lcom/delan/app/germanybluetooth/bluetooth/BleService;I)I

    .line 622
    const-string v1, "uiHandler == null"

    invoke-static {v1}, Lcom/apkfuns/logutils/LogUtils;->e(Ljava/lang/Object;)V

    goto/16 :goto_51b

    .line 631
    :cond_7c1
    iget-object v1, p0, Lcom/delan/app/germanybluetooth/bluetooth/BleService$4;->this$0:Lcom/delan/app/germanybluetooth/bluetooth/BleService;

    invoke-static {v1, v5}, Lcom/delan/app/germanybluetooth/bluetooth/BleService;->access$802(Lcom/delan/app/germanybluetooth/bluetooth/BleService;I)I

    .line 632
    const-string v1, "uiHandler == null"

    invoke-static {v1}, Lcom/apkfuns/logutils/LogUtils;->e(Ljava/lang/Object;)V

    goto/16 :goto_547

    .line 641
    :cond_7cd
    iget-object v1, p0, Lcom/delan/app/germanybluetooth/bluetooth/BleService$4;->this$0:Lcom/delan/app/germanybluetooth/bluetooth/BleService;

    invoke-static {v1, v5}, Lcom/delan/app/germanybluetooth/bluetooth/BleService;->access$902(Lcom/delan/app/germanybluetooth/bluetooth/BleService;I)I

    .line 642
    const-string v1, "uiHandler == null"

    invoke-static {v1}, Lcom/apkfuns/logutils/LogUtils;->e(Ljava/lang/Object;)V

    goto/16 :goto_573

    .line 651
    :cond_7d9
    iget-object v1, p0, Lcom/delan/app/germanybluetooth/bluetooth/BleService$4;->this$0:Lcom/delan/app/germanybluetooth/bluetooth/BleService;

    invoke-static {v1, v5}, Lcom/delan/app/germanybluetooth/bluetooth/BleService;->access$1002(Lcom/delan/app/germanybluetooth/bluetooth/BleService;I)I

    .line 652
    const-string v1, "uiHandler == null"

    invoke-static {v1}, Lcom/apkfuns/logutils/LogUtils;->e(Ljava/lang/Object;)V

    goto/16 :goto_59f

    .line 661
    :cond_7e5
    iget-object v1, p0, Lcom/delan/app/germanybluetooth/bluetooth/BleService$4;->this$0:Lcom/delan/app/germanybluetooth/bluetooth/BleService;

    invoke-static {v1, v5}, Lcom/delan/app/germanybluetooth/bluetooth/BleService;->access$1102(Lcom/delan/app/germanybluetooth/bluetooth/BleService;I)I

    .line 662
    const-string v1, "uiHandler == null"

    invoke-static {v1}, Lcom/apkfuns/logutils/LogUtils;->e(Ljava/lang/Object;)V

    goto/16 :goto_5cb

    .line 671
    :cond_7f1
    iget-object v1, p0, Lcom/delan/app/germanybluetooth/bluetooth/BleService$4;->this$0:Lcom/delan/app/germanybluetooth/bluetooth/BleService;

    invoke-static {v1, v5}, Lcom/delan/app/germanybluetooth/bluetooth/BleService;->access$1202(Lcom/delan/app/germanybluetooth/bluetooth/BleService;I)I

    .line 672
    const-string v1, "uiHandler == null"

    invoke-static {v1}, Lcom/apkfuns/logutils/LogUtils;->e(Ljava/lang/Object;)V

    goto/16 :goto_5f7

    .line 681
    :cond_7fd
    iget-object v1, p0, Lcom/delan/app/germanybluetooth/bluetooth/BleService$4;->this$0:Lcom/delan/app/germanybluetooth/bluetooth/BleService;

    invoke-static {v1, v5}, Lcom/delan/app/germanybluetooth/bluetooth/BleService;->access$1302(Lcom/delan/app/germanybluetooth/bluetooth/BleService;I)I

    .line 682
    const-string v1, "uiHandler == null"

    invoke-static {v1}, Lcom/apkfuns/logutils/LogUtils;->e(Ljava/lang/Object;)V

    goto/16 :goto_623

    .line 691
    :cond_809
    iget-object v1, p0, Lcom/delan/app/germanybluetooth/bluetooth/BleService$4;->this$0:Lcom/delan/app/germanybluetooth/bluetooth/BleService;

    invoke-static {v1, v5}, Lcom/delan/app/germanybluetooth/bluetooth/BleService;->access$1402(Lcom/delan/app/germanybluetooth/bluetooth/BleService;I)I

    .line 692
    const-string v1, "uiHandler == null"

    invoke-static {v1}, Lcom/apkfuns/logutils/LogUtils;->e(Ljava/lang/Object;)V

    goto/16 :goto_64f

    .line 701
    :cond_815
    iget-object v1, p0, Lcom/delan/app/germanybluetooth/bluetooth/BleService$4;->this$0:Lcom/delan/app/germanybluetooth/bluetooth/BleService;

    invoke-static {v1, v5}, Lcom/delan/app/germanybluetooth/bluetooth/BleService;->access$1502(Lcom/delan/app/germanybluetooth/bluetooth/BleService;I)I

    .line 702
    const-string v1, "uiHandler == null"

    invoke-static {v1}, Lcom/apkfuns/logutils/LogUtils;->e(Ljava/lang/Object;)V

    goto/16 :goto_67b

    .line 711
    :cond_821
    iget-object v1, p0, Lcom/delan/app/germanybluetooth/bluetooth/BleService$4;->this$0:Lcom/delan/app/germanybluetooth/bluetooth/BleService;

    invoke-static {v1, v5}, Lcom/delan/app/germanybluetooth/bluetooth/BleService;->access$1602(Lcom/delan/app/germanybluetooth/bluetooth/BleService;I)I

    .line 712
    const-string v1, "uiHandler == null"

    invoke-static {v1}, Lcom/apkfuns/logutils/LogUtils;->e(Ljava/lang/Object;)V

    goto/16 :goto_6a7

    .line 721
    :cond_82d
    iget-object v1, p0, Lcom/delan/app/germanybluetooth/bluetooth/BleService$4;->this$0:Lcom/delan/app/germanybluetooth/bluetooth/BleService;

    invoke-static {v1, v5}, Lcom/delan/app/germanybluetooth/bluetooth/BleService;->access$1702(Lcom/delan/app/germanybluetooth/bluetooth/BleService;I)I

    .line 722
    const-string v1, "uiHandler == null"

    invoke-static {v1}, Lcom/apkfuns/logutils/LogUtils;->e(Ljava/lang/Object;)V

    goto/16 :goto_6d3

    .line 731
    :cond_839
    iget-object v1, p0, Lcom/delan/app/germanybluetooth/bluetooth/BleService$4;->this$0:Lcom/delan/app/germanybluetooth/bluetooth/BleService;

    invoke-static {v1, v5}, Lcom/delan/app/germanybluetooth/bluetooth/BleService;->access$1802(Lcom/delan/app/germanybluetooth/bluetooth/BleService;I)I

    .line 732
    const-string v1, "uiHandler == null"

    invoke-static {v1}, Lcom/apkfuns/logutils/LogUtils;->e(Ljava/lang/Object;)V

    goto/16 :goto_6ff

    .line 741
    :cond_845
    iget-object v1, p0, Lcom/delan/app/germanybluetooth/bluetooth/BleService$4;->this$0:Lcom/delan/app/germanybluetooth/bluetooth/BleService;

    invoke-static {v1, v5}, Lcom/delan/app/germanybluetooth/bluetooth/BleService;->access$1902(Lcom/delan/app/germanybluetooth/bluetooth/BleService;I)I

    .line 742
    const-string v1, "uiHandler == null"

    invoke-static {v1}, Lcom/apkfuns/logutils/LogUtils;->e(Ljava/lang/Object;)V

    goto/16 :goto_72b

    .line 751
    :cond_851
    iget-object v1, p0, Lcom/delan/app/germanybluetooth/bluetooth/BleService$4;->this$0:Lcom/delan/app/germanybluetooth/bluetooth/BleService;

    invoke-static {v1, v5}, Lcom/delan/app/germanybluetooth/bluetooth/BleService;->access$2002(Lcom/delan/app/germanybluetooth/bluetooth/BleService;I)I

    .line 752
    const-string v1, "uiHandler == null"

    invoke-static {v1}, Lcom/apkfuns/logutils/LogUtils;->e(Ljava/lang/Object;)V

    goto/16 :goto_757

    .line 761
    :cond_85d
    iget-object v1, p0, Lcom/delan/app/germanybluetooth/bluetooth/BleService$4;->this$0:Lcom/delan/app/germanybluetooth/bluetooth/BleService;

    invoke-static {v1, v5}, Lcom/delan/app/germanybluetooth/bluetooth/BleService;->access$2102(Lcom/delan/app/germanybluetooth/bluetooth/BleService;I)I

    .line 762
    const-string v1, "uiHandler == null"

    invoke-static {v1}, Lcom/apkfuns/logutils/LogUtils;->e(Ljava/lang/Object;)V

    goto/16 :goto_4

    .line 575
    .end local v0    # "e":Ljava/lang/InterruptedException;
    :catchall_869
    move-exception v1

    iget-object v2, p0, Lcom/delan/app/germanybluetooth/bluetooth/BleService$4;->this$0:Lcom/delan/app/germanybluetooth/bluetooth/BleService;

    invoke-static {v2}, Lcom/delan/app/germanybluetooth/bluetooth/BleService;->access$300(Lcom/delan/app/germanybluetooth/bluetooth/BleService;)I

    move-result v2

    if-eq v2, v4, :cond_896

    .line 576
    iget-object v2, p0, Lcom/delan/app/germanybluetooth/bluetooth/BleService$4;->this$0:Lcom/delan/app/germanybluetooth/bluetooth/BleService;

    invoke-static {v2}, Lcom/delan/app/germanybluetooth/bluetooth/BleService;->access$306(Lcom/delan/app/germanybluetooth/bluetooth/BleService;)I

    move-result v2

    if-nez v2, :cond_896

    .line 577
    iget-object v2, p0, Lcom/delan/app/germanybluetooth/bluetooth/BleService$4;->this$0:Lcom/delan/app/germanybluetooth/bluetooth/BleService;

    invoke-static {v2, v4}, Lcom/delan/app/germanybluetooth/bluetooth/BleService;->access$302(Lcom/delan/app/germanybluetooth/bluetooth/BleService;I)I

    .line 578
    iget-object v2, p0, Lcom/delan/app/germanybluetooth/bluetooth/BleService$4;->this$0:Lcom/delan/app/germanybluetooth/bluetooth/BleService;

    invoke-static {v2}, Lcom/delan/app/germanybluetooth/bluetooth/BleService;->access$100(Lcom/delan/app/germanybluetooth/bluetooth/BleService;)Landroid/os/Handler;

    move-result-object v2

    if-eqz v2, :cond_baf

    .line 579
    iget-object v2, p0, Lcom/delan/app/germanybluetooth/bluetooth/BleService$4;->this$0:Lcom/delan/app/germanybluetooth/bluetooth/BleService;

    invoke-static {v2}, Lcom/delan/app/germanybluetooth/bluetooth/BleService;->access$100(Lcom/delan/app/germanybluetooth/bluetooth/BleService;)Landroid/os/Handler;

    move-result-object v2

    const-string v3, "47e9ee10-47e9-11e4-8939-164230d1df67"

    invoke-virtual {v2, v6, v3}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v2}, Landroid/os/Message;->sendToTarget()V

    .line 585
    :cond_896
    :goto_896
    iget-object v2, p0, Lcom/delan/app/germanybluetooth/bluetooth/BleService$4;->this$0:Lcom/delan/app/germanybluetooth/bluetooth/BleService;

    invoke-static {v2}, Lcom/delan/app/germanybluetooth/bluetooth/BleService;->access$400(Lcom/delan/app/germanybluetooth/bluetooth/BleService;)I

    move-result v2

    if-eq v2, v4, :cond_8c2

    .line 586
    iget-object v2, p0, Lcom/delan/app/germanybluetooth/bluetooth/BleService$4;->this$0:Lcom/delan/app/germanybluetooth/bluetooth/BleService;

    invoke-static {v2}, Lcom/delan/app/germanybluetooth/bluetooth/BleService;->access$406(Lcom/delan/app/germanybluetooth/bluetooth/BleService;)I

    move-result v2

    if-nez v2, :cond_8c2

    .line 587
    iget-object v2, p0, Lcom/delan/app/germanybluetooth/bluetooth/BleService$4;->this$0:Lcom/delan/app/germanybluetooth/bluetooth/BleService;

    invoke-static {v2, v4}, Lcom/delan/app/germanybluetooth/bluetooth/BleService;->access$402(Lcom/delan/app/germanybluetooth/bluetooth/BleService;I)I

    .line 588
    iget-object v2, p0, Lcom/delan/app/germanybluetooth/bluetooth/BleService$4;->this$0:Lcom/delan/app/germanybluetooth/bluetooth/BleService;

    invoke-static {v2}, Lcom/delan/app/germanybluetooth/bluetooth/BleService;->access$100(Lcom/delan/app/germanybluetooth/bluetooth/BleService;)Landroid/os/Handler;

    move-result-object v2

    if-eqz v2, :cond_bbb

    .line 589
    iget-object v2, p0, Lcom/delan/app/germanybluetooth/bluetooth/BleService$4;->this$0:Lcom/delan/app/germanybluetooth/bluetooth/BleService;

    invoke-static {v2}, Lcom/delan/app/germanybluetooth/bluetooth/BleService;->access$100(Lcom/delan/app/germanybluetooth/bluetooth/BleService;)Landroid/os/Handler;

    move-result-object v2

    const-string v3, "47e9ee11-47e9-11e4-8939-164230d1df67"

    invoke-virtual {v2, v6, v3}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v2}, Landroid/os/Message;->sendToTarget()V

    .line 595
    :cond_8c2
    :goto_8c2
    iget-object v2, p0, Lcom/delan/app/germanybluetooth/bluetooth/BleService$4;->this$0:Lcom/delan/app/germanybluetooth/bluetooth/BleService;

    invoke-static {v2}, Lcom/delan/app/germanybluetooth/bluetooth/BleService;->access$500(Lcom/delan/app/germanybluetooth/bluetooth/BleService;)I

    move-result v2

    if-eq v2, v4, :cond_8ee

    .line 596
    iget-object v2, p0, Lcom/delan/app/germanybluetooth/bluetooth/BleService$4;->this$0:Lcom/delan/app/germanybluetooth/bluetooth/BleService;

    invoke-static {v2}, Lcom/delan/app/germanybluetooth/bluetooth/BleService;->access$506(Lcom/delan/app/germanybluetooth/bluetooth/BleService;)I

    move-result v2

    if-nez v2, :cond_8ee

    .line 597
    iget-object v2, p0, Lcom/delan/app/germanybluetooth/bluetooth/BleService$4;->this$0:Lcom/delan/app/germanybluetooth/bluetooth/BleService;

    invoke-static {v2, v4}, Lcom/delan/app/germanybluetooth/bluetooth/BleService;->access$502(Lcom/delan/app/germanybluetooth/bluetooth/BleService;I)I

    .line 598
    iget-object v2, p0, Lcom/delan/app/germanybluetooth/bluetooth/BleService$4;->this$0:Lcom/delan/app/germanybluetooth/bluetooth/BleService;

    invoke-static {v2}, Lcom/delan/app/germanybluetooth/bluetooth/BleService;->access$100(Lcom/delan/app/germanybluetooth/bluetooth/BleService;)Landroid/os/Handler;

    move-result-object v2

    if-eqz v2, :cond_bc7

    .line 599
    iget-object v2, p0, Lcom/delan/app/germanybluetooth/bluetooth/BleService$4;->this$0:Lcom/delan/app/germanybluetooth/bluetooth/BleService;

    invoke-static {v2}, Lcom/delan/app/germanybluetooth/bluetooth/BleService;->access$100(Lcom/delan/app/germanybluetooth/bluetooth/BleService;)Landroid/os/Handler;

    move-result-object v2

    const-string v3, "47e9ee12-47e9-11e4-8939-164230d1df67"

    invoke-virtual {v2, v6, v3}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v2}, Landroid/os/Message;->sendToTarget()V

    .line 605
    :cond_8ee
    :goto_8ee
    iget-object v2, p0, Lcom/delan/app/germanybluetooth/bluetooth/BleService$4;->this$0:Lcom/delan/app/germanybluetooth/bluetooth/BleService;

    invoke-static {v2}, Lcom/delan/app/germanybluetooth/bluetooth/BleService;->access$600(Lcom/delan/app/germanybluetooth/bluetooth/BleService;)I

    move-result v2

    if-eq v2, v4, :cond_91a

    .line 606
    iget-object v2, p0, Lcom/delan/app/germanybluetooth/bluetooth/BleService$4;->this$0:Lcom/delan/app/germanybluetooth/bluetooth/BleService;

    invoke-static {v2}, Lcom/delan/app/germanybluetooth/bluetooth/BleService;->access$606(Lcom/delan/app/germanybluetooth/bluetooth/BleService;)I

    move-result v2

    if-nez v2, :cond_91a

    .line 607
    iget-object v2, p0, Lcom/delan/app/germanybluetooth/bluetooth/BleService$4;->this$0:Lcom/delan/app/germanybluetooth/bluetooth/BleService;

    invoke-static {v2, v4}, Lcom/delan/app/germanybluetooth/bluetooth/BleService;->access$602(Lcom/delan/app/germanybluetooth/bluetooth/BleService;I)I

    .line 608
    iget-object v2, p0, Lcom/delan/app/germanybluetooth/bluetooth/BleService$4;->this$0:Lcom/delan/app/germanybluetooth/bluetooth/BleService;

    invoke-static {v2}, Lcom/delan/app/germanybluetooth/bluetooth/BleService;->access$100(Lcom/delan/app/germanybluetooth/bluetooth/BleService;)Landroid/os/Handler;

    move-result-object v2

    if-eqz v2, :cond_bd3

    .line 609
    iget-object v2, p0, Lcom/delan/app/germanybluetooth/bluetooth/BleService$4;->this$0:Lcom/delan/app/germanybluetooth/bluetooth/BleService;

    invoke-static {v2}, Lcom/delan/app/germanybluetooth/bluetooth/BleService;->access$100(Lcom/delan/app/germanybluetooth/bluetooth/BleService;)Landroid/os/Handler;

    move-result-object v2

    const-string v3, "47e9ee13-47e9-11e4-8939-164230d1df67"

    invoke-virtual {v2, v6, v3}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v2}, Landroid/os/Message;->sendToTarget()V

    .line 615
    :cond_91a
    :goto_91a
    iget-object v2, p0, Lcom/delan/app/germanybluetooth/bluetooth/BleService$4;->this$0:Lcom/delan/app/germanybluetooth/bluetooth/BleService;

    invoke-static {v2}, Lcom/delan/app/germanybluetooth/bluetooth/BleService;->access$700(Lcom/delan/app/germanybluetooth/bluetooth/BleService;)I

    move-result v2

    if-eq v2, v4, :cond_946

    .line 616
    iget-object v2, p0, Lcom/delan/app/germanybluetooth/bluetooth/BleService$4;->this$0:Lcom/delan/app/germanybluetooth/bluetooth/BleService;

    invoke-static {v2}, Lcom/delan/app/germanybluetooth/bluetooth/BleService;->access$706(Lcom/delan/app/germanybluetooth/bluetooth/BleService;)I

    move-result v2

    if-nez v2, :cond_946

    .line 617
    iget-object v2, p0, Lcom/delan/app/germanybluetooth/bluetooth/BleService$4;->this$0:Lcom/delan/app/germanybluetooth/bluetooth/BleService;

    invoke-static {v2, v4}, Lcom/delan/app/germanybluetooth/bluetooth/BleService;->access$702(Lcom/delan/app/germanybluetooth/bluetooth/BleService;I)I

    .line 618
    iget-object v2, p0, Lcom/delan/app/germanybluetooth/bluetooth/BleService$4;->this$0:Lcom/delan/app/germanybluetooth/bluetooth/BleService;

    invoke-static {v2}, Lcom/delan/app/germanybluetooth/bluetooth/BleService;->access$100(Lcom/delan/app/germanybluetooth/bluetooth/BleService;)Landroid/os/Handler;

    move-result-object v2

    if-eqz v2, :cond_bdf

    .line 619
    iget-object v2, p0, Lcom/delan/app/germanybluetooth/bluetooth/BleService$4;->this$0:Lcom/delan/app/germanybluetooth/bluetooth/BleService;

    invoke-static {v2}, Lcom/delan/app/germanybluetooth/bluetooth/BleService;->access$100(Lcom/delan/app/germanybluetooth/bluetooth/BleService;)Landroid/os/Handler;

    move-result-object v2

    const-string v3, "47e9ee14-47e9-11e4-8939-164230d1df67"

    invoke-virtual {v2, v6, v3}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v2}, Landroid/os/Message;->sendToTarget()V

    .line 625
    :cond_946
    :goto_946
    iget-object v2, p0, Lcom/delan/app/germanybluetooth/bluetooth/BleService$4;->this$0:Lcom/delan/app/germanybluetooth/bluetooth/BleService;

    invoke-static {v2}, Lcom/delan/app/germanybluetooth/bluetooth/BleService;->access$800(Lcom/delan/app/germanybluetooth/bluetooth/BleService;)I

    move-result v2

    if-eq v2, v4, :cond_972

    .line 626
    iget-object v2, p0, Lcom/delan/app/germanybluetooth/bluetooth/BleService$4;->this$0:Lcom/delan/app/germanybluetooth/bluetooth/BleService;

    invoke-static {v2}, Lcom/delan/app/germanybluetooth/bluetooth/BleService;->access$806(Lcom/delan/app/germanybluetooth/bluetooth/BleService;)I

    move-result v2

    if-nez v2, :cond_972

    .line 627
    iget-object v2, p0, Lcom/delan/app/germanybluetooth/bluetooth/BleService$4;->this$0:Lcom/delan/app/germanybluetooth/bluetooth/BleService;

    invoke-static {v2, v4}, Lcom/delan/app/germanybluetooth/bluetooth/BleService;->access$802(Lcom/delan/app/germanybluetooth/bluetooth/BleService;I)I

    .line 628
    iget-object v2, p0, Lcom/delan/app/germanybluetooth/bluetooth/BleService$4;->this$0:Lcom/delan/app/germanybluetooth/bluetooth/BleService;

    invoke-static {v2}, Lcom/delan/app/germanybluetooth/bluetooth/BleService;->access$100(Lcom/delan/app/germanybluetooth/bluetooth/BleService;)Landroid/os/Handler;

    move-result-object v2

    if-eqz v2, :cond_beb

    .line 629
    iget-object v2, p0, Lcom/delan/app/germanybluetooth/bluetooth/BleService$4;->this$0:Lcom/delan/app/germanybluetooth/bluetooth/BleService;

    invoke-static {v2}, Lcom/delan/app/germanybluetooth/bluetooth/BleService;->access$100(Lcom/delan/app/germanybluetooth/bluetooth/BleService;)Landroid/os/Handler;

    move-result-object v2

    const-string v3, "47e9ee15-47e9-11e4-8939-164230d1df67"

    invoke-virtual {v2, v6, v3}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v2}, Landroid/os/Message;->sendToTarget()V

    .line 635
    :cond_972
    :goto_972
    iget-object v2, p0, Lcom/delan/app/germanybluetooth/bluetooth/BleService$4;->this$0:Lcom/delan/app/germanybluetooth/bluetooth/BleService;

    invoke-static {v2}, Lcom/delan/app/germanybluetooth/bluetooth/BleService;->access$900(Lcom/delan/app/germanybluetooth/bluetooth/BleService;)I

    move-result v2

    if-eq v2, v4, :cond_99e

    .line 636
    iget-object v2, p0, Lcom/delan/app/germanybluetooth/bluetooth/BleService$4;->this$0:Lcom/delan/app/germanybluetooth/bluetooth/BleService;

    invoke-static {v2}, Lcom/delan/app/germanybluetooth/bluetooth/BleService;->access$906(Lcom/delan/app/germanybluetooth/bluetooth/BleService;)I

    move-result v2

    if-nez v2, :cond_99e

    .line 637
    iget-object v2, p0, Lcom/delan/app/germanybluetooth/bluetooth/BleService$4;->this$0:Lcom/delan/app/germanybluetooth/bluetooth/BleService;

    invoke-static {v2, v4}, Lcom/delan/app/germanybluetooth/bluetooth/BleService;->access$902(Lcom/delan/app/germanybluetooth/bluetooth/BleService;I)I

    .line 638
    iget-object v2, p0, Lcom/delan/app/germanybluetooth/bluetooth/BleService$4;->this$0:Lcom/delan/app/germanybluetooth/bluetooth/BleService;

    invoke-static {v2}, Lcom/delan/app/germanybluetooth/bluetooth/BleService;->access$100(Lcom/delan/app/germanybluetooth/bluetooth/BleService;)Landroid/os/Handler;

    move-result-object v2

    if-eqz v2, :cond_bf7

    .line 639
    iget-object v2, p0, Lcom/delan/app/germanybluetooth/bluetooth/BleService$4;->this$0:Lcom/delan/app/germanybluetooth/bluetooth/BleService;

    invoke-static {v2}, Lcom/delan/app/germanybluetooth/bluetooth/BleService;->access$100(Lcom/delan/app/germanybluetooth/bluetooth/BleService;)Landroid/os/Handler;

    move-result-object v2

    const-string v3, "47e9ee16-47e9-11e4-8939-164230d1df67"

    invoke-virtual {v2, v6, v3}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v2}, Landroid/os/Message;->sendToTarget()V

    .line 645
    :cond_99e
    :goto_99e
    iget-object v2, p0, Lcom/delan/app/germanybluetooth/bluetooth/BleService$4;->this$0:Lcom/delan/app/germanybluetooth/bluetooth/BleService;

    invoke-static {v2}, Lcom/delan/app/germanybluetooth/bluetooth/BleService;->access$1000(Lcom/delan/app/germanybluetooth/bluetooth/BleService;)I

    move-result v2

    if-eq v2, v4, :cond_9ca

    .line 646
    iget-object v2, p0, Lcom/delan/app/germanybluetooth/bluetooth/BleService$4;->this$0:Lcom/delan/app/germanybluetooth/bluetooth/BleService;

    invoke-static {v2}, Lcom/delan/app/germanybluetooth/bluetooth/BleService;->access$1006(Lcom/delan/app/germanybluetooth/bluetooth/BleService;)I

    move-result v2

    if-nez v2, :cond_9ca

    .line 647
    iget-object v2, p0, Lcom/delan/app/germanybluetooth/bluetooth/BleService$4;->this$0:Lcom/delan/app/germanybluetooth/bluetooth/BleService;

    invoke-static {v2, v4}, Lcom/delan/app/germanybluetooth/bluetooth/BleService;->access$1002(Lcom/delan/app/germanybluetooth/bluetooth/BleService;I)I

    .line 648
    iget-object v2, p0, Lcom/delan/app/germanybluetooth/bluetooth/BleService$4;->this$0:Lcom/delan/app/germanybluetooth/bluetooth/BleService;

    invoke-static {v2}, Lcom/delan/app/germanybluetooth/bluetooth/BleService;->access$100(Lcom/delan/app/germanybluetooth/bluetooth/BleService;)Landroid/os/Handler;

    move-result-object v2

    if-eqz v2, :cond_c03

    .line 649
    iget-object v2, p0, Lcom/delan/app/germanybluetooth/bluetooth/BleService$4;->this$0:Lcom/delan/app/germanybluetooth/bluetooth/BleService;

    invoke-static {v2}, Lcom/delan/app/germanybluetooth/bluetooth/BleService;->access$100(Lcom/delan/app/germanybluetooth/bluetooth/BleService;)Landroid/os/Handler;

    move-result-object v2

    const-string v3, "47e9ee20-47e9-11e4-8939-164230d1df67"

    invoke-virtual {v2, v6, v3}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v2}, Landroid/os/Message;->sendToTarget()V

    .line 655
    :cond_9ca
    :goto_9ca
    iget-object v2, p0, Lcom/delan/app/germanybluetooth/bluetooth/BleService$4;->this$0:Lcom/delan/app/germanybluetooth/bluetooth/BleService;

    invoke-static {v2}, Lcom/delan/app/germanybluetooth/bluetooth/BleService;->access$1100(Lcom/delan/app/germanybluetooth/bluetooth/BleService;)I

    move-result v2

    if-eq v2, v4, :cond_9f6

    .line 656
    iget-object v2, p0, Lcom/delan/app/germanybluetooth/bluetooth/BleService$4;->this$0:Lcom/delan/app/germanybluetooth/bluetooth/BleService;

    invoke-static {v2}, Lcom/delan/app/germanybluetooth/bluetooth/BleService;->access$1106(Lcom/delan/app/germanybluetooth/bluetooth/BleService;)I

    move-result v2

    if-nez v2, :cond_9f6

    .line 657
    iget-object v2, p0, Lcom/delan/app/germanybluetooth/bluetooth/BleService$4;->this$0:Lcom/delan/app/germanybluetooth/bluetooth/BleService;

    invoke-static {v2, v4}, Lcom/delan/app/germanybluetooth/bluetooth/BleService;->access$1102(Lcom/delan/app/germanybluetooth/bluetooth/BleService;I)I

    .line 658
    iget-object v2, p0, Lcom/delan/app/germanybluetooth/bluetooth/BleService$4;->this$0:Lcom/delan/app/germanybluetooth/bluetooth/BleService;

    invoke-static {v2}, Lcom/delan/app/germanybluetooth/bluetooth/BleService;->access$100(Lcom/delan/app/germanybluetooth/bluetooth/BleService;)Landroid/os/Handler;

    move-result-object v2

    if-eqz v2, :cond_c0f

    .line 659
    iget-object v2, p0, Lcom/delan/app/germanybluetooth/bluetooth/BleService$4;->this$0:Lcom/delan/app/germanybluetooth/bluetooth/BleService;

    invoke-static {v2}, Lcom/delan/app/germanybluetooth/bluetooth/BleService;->access$100(Lcom/delan/app/germanybluetooth/bluetooth/BleService;)Landroid/os/Handler;

    move-result-object v2

    const-string v3, "47e9ee2a-47e9-11e4-8939-164230d1df67"

    invoke-virtual {v2, v6, v3}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v2}, Landroid/os/Message;->sendToTarget()V

    .line 665
    :cond_9f6
    :goto_9f6
    iget-object v2, p0, Lcom/delan/app/germanybluetooth/bluetooth/BleService$4;->this$0:Lcom/delan/app/germanybluetooth/bluetooth/BleService;

    invoke-static {v2}, Lcom/delan/app/germanybluetooth/bluetooth/BleService;->access$1200(Lcom/delan/app/germanybluetooth/bluetooth/BleService;)I

    move-result v2

    if-eq v2, v4, :cond_a22

    .line 666
    iget-object v2, p0, Lcom/delan/app/germanybluetooth/bluetooth/BleService$4;->this$0:Lcom/delan/app/germanybluetooth/bluetooth/BleService;

    invoke-static {v2}, Lcom/delan/app/germanybluetooth/bluetooth/BleService;->access$1206(Lcom/delan/app/germanybluetooth/bluetooth/BleService;)I

    move-result v2

    if-nez v2, :cond_a22

    .line 667
    iget-object v2, p0, Lcom/delan/app/germanybluetooth/bluetooth/BleService$4;->this$0:Lcom/delan/app/germanybluetooth/bluetooth/BleService;

    invoke-static {v2, v4}, Lcom/delan/app/germanybluetooth/bluetooth/BleService;->access$1202(Lcom/delan/app/germanybluetooth/bluetooth/BleService;I)I

    .line 668
    iget-object v2, p0, Lcom/delan/app/germanybluetooth/bluetooth/BleService$4;->this$0:Lcom/delan/app/germanybluetooth/bluetooth/BleService;

    invoke-static {v2}, Lcom/delan/app/germanybluetooth/bluetooth/BleService;->access$100(Lcom/delan/app/germanybluetooth/bluetooth/BleService;)Landroid/os/Handler;

    move-result-object v2

    if-eqz v2, :cond_c1b

    .line 669
    iget-object v2, p0, Lcom/delan/app/germanybluetooth/bluetooth/BleService$4;->this$0:Lcom/delan/app/germanybluetooth/bluetooth/BleService;

    invoke-static {v2}, Lcom/delan/app/germanybluetooth/bluetooth/BleService;->access$100(Lcom/delan/app/germanybluetooth/bluetooth/BleService;)Landroid/os/Handler;

    move-result-object v2

    const-string v3, "47e9ee2b-47e9-11e4-8939-164230d1df67"

    invoke-virtual {v2, v6, v3}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v2}, Landroid/os/Message;->sendToTarget()V

    .line 675
    :cond_a22
    :goto_a22
    iget-object v2, p0, Lcom/delan/app/germanybluetooth/bluetooth/BleService$4;->this$0:Lcom/delan/app/germanybluetooth/bluetooth/BleService;

    invoke-static {v2}, Lcom/delan/app/germanybluetooth/bluetooth/BleService;->access$1300(Lcom/delan/app/germanybluetooth/bluetooth/BleService;)I

    move-result v2

    if-eq v2, v4, :cond_a4e

    .line 676
    iget-object v2, p0, Lcom/delan/app/germanybluetooth/bluetooth/BleService$4;->this$0:Lcom/delan/app/germanybluetooth/bluetooth/BleService;

    invoke-static {v2}, Lcom/delan/app/germanybluetooth/bluetooth/BleService;->access$1306(Lcom/delan/app/germanybluetooth/bluetooth/BleService;)I

    move-result v2

    if-nez v2, :cond_a4e

    .line 677
    iget-object v2, p0, Lcom/delan/app/germanybluetooth/bluetooth/BleService$4;->this$0:Lcom/delan/app/germanybluetooth/bluetooth/BleService;

    invoke-static {v2, v4}, Lcom/delan/app/germanybluetooth/bluetooth/BleService;->access$1302(Lcom/delan/app/germanybluetooth/bluetooth/BleService;I)I

    .line 678
    iget-object v2, p0, Lcom/delan/app/germanybluetooth/bluetooth/BleService$4;->this$0:Lcom/delan/app/germanybluetooth/bluetooth/BleService;

    invoke-static {v2}, Lcom/delan/app/germanybluetooth/bluetooth/BleService;->access$100(Lcom/delan/app/germanybluetooth/bluetooth/BleService;)Landroid/os/Handler;

    move-result-object v2

    if-eqz v2, :cond_c27

    .line 679
    iget-object v2, p0, Lcom/delan/app/germanybluetooth/bluetooth/BleService$4;->this$0:Lcom/delan/app/germanybluetooth/bluetooth/BleService;

    invoke-static {v2}, Lcom/delan/app/germanybluetooth/bluetooth/BleService;->access$100(Lcom/delan/app/germanybluetooth/bluetooth/BleService;)Landroid/os/Handler;

    move-result-object v2

    const-string v3, "47e9ef52-47e9-11e4-8939-164230d1df67"

    invoke-virtual {v2, v6, v3}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v2}, Landroid/os/Message;->sendToTarget()V

    .line 685
    :cond_a4e
    :goto_a4e
    iget-object v2, p0, Lcom/delan/app/germanybluetooth/bluetooth/BleService$4;->this$0:Lcom/delan/app/germanybluetooth/bluetooth/BleService;

    invoke-static {v2}, Lcom/delan/app/germanybluetooth/bluetooth/BleService;->access$1400(Lcom/delan/app/germanybluetooth/bluetooth/BleService;)I

    move-result v2

    if-eq v2, v4, :cond_a7a

    .line 686
    iget-object v2, p0, Lcom/delan/app/germanybluetooth/bluetooth/BleService$4;->this$0:Lcom/delan/app/germanybluetooth/bluetooth/BleService;

    invoke-static {v2}, Lcom/delan/app/germanybluetooth/bluetooth/BleService;->access$1406(Lcom/delan/app/germanybluetooth/bluetooth/BleService;)I

    move-result v2

    if-nez v2, :cond_a7a

    .line 687
    iget-object v2, p0, Lcom/delan/app/germanybluetooth/bluetooth/BleService$4;->this$0:Lcom/delan/app/germanybluetooth/bluetooth/BleService;

    invoke-static {v2, v4}, Lcom/delan/app/germanybluetooth/bluetooth/BleService;->access$1402(Lcom/delan/app/germanybluetooth/bluetooth/BleService;I)I

    .line 688
    iget-object v2, p0, Lcom/delan/app/germanybluetooth/bluetooth/BleService$4;->this$0:Lcom/delan/app/germanybluetooth/bluetooth/BleService;

    invoke-static {v2}, Lcom/delan/app/germanybluetooth/bluetooth/BleService;->access$100(Lcom/delan/app/germanybluetooth/bluetooth/BleService;)Landroid/os/Handler;

    move-result-object v2

    if-eqz v2, :cond_c33

    .line 689
    iget-object v2, p0, Lcom/delan/app/germanybluetooth/bluetooth/BleService$4;->this$0:Lcom/delan/app/germanybluetooth/bluetooth/BleService;

    invoke-static {v2}, Lcom/delan/app/germanybluetooth/bluetooth/BleService;->access$100(Lcom/delan/app/germanybluetooth/bluetooth/BleService;)Landroid/os/Handler;

    move-result-object v2

    const-string v3, "47e9ef53-47e9-11e4-8939-164230d1df67"

    invoke-virtual {v2, v6, v3}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v2}, Landroid/os/Message;->sendToTarget()V

    .line 695
    :cond_a7a
    :goto_a7a
    iget-object v2, p0, Lcom/delan/app/germanybluetooth/bluetooth/BleService$4;->this$0:Lcom/delan/app/germanybluetooth/bluetooth/BleService;

    invoke-static {v2}, Lcom/delan/app/germanybluetooth/bluetooth/BleService;->access$1500(Lcom/delan/app/germanybluetooth/bluetooth/BleService;)I

    move-result v2

    if-eq v2, v4, :cond_aa6

    .line 696
    iget-object v2, p0, Lcom/delan/app/germanybluetooth/bluetooth/BleService$4;->this$0:Lcom/delan/app/germanybluetooth/bluetooth/BleService;

    invoke-static {v2}, Lcom/delan/app/germanybluetooth/bluetooth/BleService;->access$1506(Lcom/delan/app/germanybluetooth/bluetooth/BleService;)I

    move-result v2

    if-nez v2, :cond_aa6

    .line 697
    iget-object v2, p0, Lcom/delan/app/germanybluetooth/bluetooth/BleService$4;->this$0:Lcom/delan/app/germanybluetooth/bluetooth/BleService;

    invoke-static {v2, v4}, Lcom/delan/app/germanybluetooth/bluetooth/BleService;->access$1502(Lcom/delan/app/germanybluetooth/bluetooth/BleService;I)I

    .line 698
    iget-object v2, p0, Lcom/delan/app/germanybluetooth/bluetooth/BleService$4;->this$0:Lcom/delan/app/germanybluetooth/bluetooth/BleService;

    invoke-static {v2}, Lcom/delan/app/germanybluetooth/bluetooth/BleService;->access$100(Lcom/delan/app/germanybluetooth/bluetooth/BleService;)Landroid/os/Handler;

    move-result-object v2

    if-eqz v2, :cond_c3f

    .line 699
    iget-object v2, p0, Lcom/delan/app/germanybluetooth/bluetooth/BleService$4;->this$0:Lcom/delan/app/germanybluetooth/bluetooth/BleService;

    invoke-static {v2}, Lcom/delan/app/germanybluetooth/bluetooth/BleService;->access$100(Lcom/delan/app/germanybluetooth/bluetooth/BleService;)Landroid/os/Handler;

    move-result-object v2

    const-string v3, "47e9ef54-47e9-11e4-8939-164230d1df67"

    invoke-virtual {v2, v6, v3}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v2}, Landroid/os/Message;->sendToTarget()V

    .line 705
    :cond_aa6
    :goto_aa6
    iget-object v2, p0, Lcom/delan/app/germanybluetooth/bluetooth/BleService$4;->this$0:Lcom/delan/app/germanybluetooth/bluetooth/BleService;

    invoke-static {v2}, Lcom/delan/app/germanybluetooth/bluetooth/BleService;->access$1600(Lcom/delan/app/germanybluetooth/bluetooth/BleService;)I

    move-result v2

    if-eq v2, v4, :cond_ad2

    .line 706
    iget-object v2, p0, Lcom/delan/app/germanybluetooth/bluetooth/BleService$4;->this$0:Lcom/delan/app/germanybluetooth/bluetooth/BleService;

    invoke-static {v2}, Lcom/delan/app/germanybluetooth/bluetooth/BleService;->access$1606(Lcom/delan/app/germanybluetooth/bluetooth/BleService;)I

    move-result v2

    if-nez v2, :cond_ad2

    .line 707
    iget-object v2, p0, Lcom/delan/app/germanybluetooth/bluetooth/BleService$4;->this$0:Lcom/delan/app/germanybluetooth/bluetooth/BleService;

    invoke-static {v2, v4}, Lcom/delan/app/germanybluetooth/bluetooth/BleService;->access$1602(Lcom/delan/app/germanybluetooth/bluetooth/BleService;I)I

    .line 708
    iget-object v2, p0, Lcom/delan/app/germanybluetooth/bluetooth/BleService$4;->this$0:Lcom/delan/app/germanybluetooth/bluetooth/BleService;

    invoke-static {v2}, Lcom/delan/app/germanybluetooth/bluetooth/BleService;->access$100(Lcom/delan/app/germanybluetooth/bluetooth/BleService;)Landroid/os/Handler;

    move-result-object v2

    if-eqz v2, :cond_c4b

    .line 709
    iget-object v2, p0, Lcom/delan/app/germanybluetooth/bluetooth/BleService$4;->this$0:Lcom/delan/app/germanybluetooth/bluetooth/BleService;

    invoke-static {v2}, Lcom/delan/app/germanybluetooth/bluetooth/BleService;->access$100(Lcom/delan/app/germanybluetooth/bluetooth/BleService;)Landroid/os/Handler;

    move-result-object v2

    const-string v3, "47e9ef55-47e9-11e4-8939-164230d1df67"

    invoke-virtual {v2, v6, v3}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v2}, Landroid/os/Message;->sendToTarget()V

    .line 715
    :cond_ad2
    :goto_ad2
    iget-object v2, p0, Lcom/delan/app/germanybluetooth/bluetooth/BleService$4;->this$0:Lcom/delan/app/germanybluetooth/bluetooth/BleService;

    invoke-static {v2}, Lcom/delan/app/germanybluetooth/bluetooth/BleService;->access$1700(Lcom/delan/app/germanybluetooth/bluetooth/BleService;)I

    move-result v2

    if-eq v2, v4, :cond_afe

    .line 716
    iget-object v2, p0, Lcom/delan/app/germanybluetooth/bluetooth/BleService$4;->this$0:Lcom/delan/app/germanybluetooth/bluetooth/BleService;

    invoke-static {v2}, Lcom/delan/app/germanybluetooth/bluetooth/BleService;->access$1706(Lcom/delan/app/germanybluetooth/bluetooth/BleService;)I

    move-result v2

    if-nez v2, :cond_afe

    .line 717
    iget-object v2, p0, Lcom/delan/app/germanybluetooth/bluetooth/BleService$4;->this$0:Lcom/delan/app/germanybluetooth/bluetooth/BleService;

    invoke-static {v2, v4}, Lcom/delan/app/germanybluetooth/bluetooth/BleService;->access$1702(Lcom/delan/app/germanybluetooth/bluetooth/BleService;I)I

    .line 718
    iget-object v2, p0, Lcom/delan/app/germanybluetooth/bluetooth/BleService$4;->this$0:Lcom/delan/app/germanybluetooth/bluetooth/BleService;

    invoke-static {v2}, Lcom/delan/app/germanybluetooth/bluetooth/BleService;->access$100(Lcom/delan/app/germanybluetooth/bluetooth/BleService;)Landroid/os/Handler;

    move-result-object v2

    if-eqz v2, :cond_c57

    .line 719
    iget-object v2, p0, Lcom/delan/app/germanybluetooth/bluetooth/BleService$4;->this$0:Lcom/delan/app/germanybluetooth/bluetooth/BleService;

    invoke-static {v2}, Lcom/delan/app/germanybluetooth/bluetooth/BleService;->access$100(Lcom/delan/app/germanybluetooth/bluetooth/BleService;)Landroid/os/Handler;

    move-result-object v2

    const-string v3, "47e9ef56-47e9-11e4-8939-164230d1df67"

    invoke-virtual {v2, v6, v3}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v2}, Landroid/os/Message;->sendToTarget()V

    .line 725
    :cond_afe
    :goto_afe
    iget-object v2, p0, Lcom/delan/app/germanybluetooth/bluetooth/BleService$4;->this$0:Lcom/delan/app/germanybluetooth/bluetooth/BleService;

    invoke-static {v2}, Lcom/delan/app/germanybluetooth/bluetooth/BleService;->access$1800(Lcom/delan/app/germanybluetooth/bluetooth/BleService;)I

    move-result v2

    if-eq v2, v4, :cond_b2a

    .line 726
    iget-object v2, p0, Lcom/delan/app/germanybluetooth/bluetooth/BleService$4;->this$0:Lcom/delan/app/germanybluetooth/bluetooth/BleService;

    invoke-static {v2}, Lcom/delan/app/germanybluetooth/bluetooth/BleService;->access$1806(Lcom/delan/app/germanybluetooth/bluetooth/BleService;)I

    move-result v2

    if-nez v2, :cond_b2a

    .line 727
    iget-object v2, p0, Lcom/delan/app/germanybluetooth/bluetooth/BleService$4;->this$0:Lcom/delan/app/germanybluetooth/bluetooth/BleService;

    invoke-static {v2, v4}, Lcom/delan/app/germanybluetooth/bluetooth/BleService;->access$1802(Lcom/delan/app/germanybluetooth/bluetooth/BleService;I)I

    .line 728
    iget-object v2, p0, Lcom/delan/app/germanybluetooth/bluetooth/BleService$4;->this$0:Lcom/delan/app/germanybluetooth/bluetooth/BleService;

    invoke-static {v2}, Lcom/delan/app/germanybluetooth/bluetooth/BleService;->access$100(Lcom/delan/app/germanybluetooth/bluetooth/BleService;)Landroid/os/Handler;

    move-result-object v2

    if-eqz v2, :cond_c63

    .line 729
    iget-object v2, p0, Lcom/delan/app/germanybluetooth/bluetooth/BleService$4;->this$0:Lcom/delan/app/germanybluetooth/bluetooth/BleService;

    invoke-static {v2}, Lcom/delan/app/germanybluetooth/bluetooth/BleService;->access$100(Lcom/delan/app/germanybluetooth/bluetooth/BleService;)Landroid/os/Handler;

    move-result-object v2

    const-string v3, "47e9ef57-47e9-11e4-8939-164230d1df67"

    invoke-virtual {v2, v6, v3}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v2}, Landroid/os/Message;->sendToTarget()V

    .line 735
    :cond_b2a
    :goto_b2a
    iget-object v2, p0, Lcom/delan/app/germanybluetooth/bluetooth/BleService$4;->this$0:Lcom/delan/app/germanybluetooth/bluetooth/BleService;

    invoke-static {v2}, Lcom/delan/app/germanybluetooth/bluetooth/BleService;->access$1900(Lcom/delan/app/germanybluetooth/bluetooth/BleService;)I

    move-result v2

    if-eq v2, v4, :cond_b56

    .line 736
    iget-object v2, p0, Lcom/delan/app/germanybluetooth/bluetooth/BleService$4;->this$0:Lcom/delan/app/germanybluetooth/bluetooth/BleService;

    invoke-static {v2}, Lcom/delan/app/germanybluetooth/bluetooth/BleService;->access$1906(Lcom/delan/app/germanybluetooth/bluetooth/BleService;)I

    move-result v2

    if-nez v2, :cond_b56

    .line 737
    iget-object v2, p0, Lcom/delan/app/germanybluetooth/bluetooth/BleService$4;->this$0:Lcom/delan/app/germanybluetooth/bluetooth/BleService;

    invoke-static {v2, v4}, Lcom/delan/app/germanybluetooth/bluetooth/BleService;->access$1902(Lcom/delan/app/germanybluetooth/bluetooth/BleService;I)I

    .line 738
    iget-object v2, p0, Lcom/delan/app/germanybluetooth/bluetooth/BleService$4;->this$0:Lcom/delan/app/germanybluetooth/bluetooth/BleService;

    invoke-static {v2}, Lcom/delan/app/germanybluetooth/bluetooth/BleService;->access$100(Lcom/delan/app/germanybluetooth/bluetooth/BleService;)Landroid/os/Handler;

    move-result-object v2

    if-eqz v2, :cond_c6f

    .line 739
    iget-object v2, p0, Lcom/delan/app/germanybluetooth/bluetooth/BleService$4;->this$0:Lcom/delan/app/germanybluetooth/bluetooth/BleService;

    invoke-static {v2}, Lcom/delan/app/germanybluetooth/bluetooth/BleService;->access$100(Lcom/delan/app/germanybluetooth/bluetooth/BleService;)Landroid/os/Handler;

    move-result-object v2

    const-string v3, "47e9ef58-47e9-11e4-8939-164230d1df67"

    invoke-virtual {v2, v6, v3}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v2}, Landroid/os/Message;->sendToTarget()V

    .line 745
    :cond_b56
    :goto_b56
    iget-object v2, p0, Lcom/delan/app/germanybluetooth/bluetooth/BleService$4;->this$0:Lcom/delan/app/germanybluetooth/bluetooth/BleService;

    invoke-static {v2}, Lcom/delan/app/germanybluetooth/bluetooth/BleService;->access$2000(Lcom/delan/app/germanybluetooth/bluetooth/BleService;)I

    move-result v2

    if-eq v2, v4, :cond_b82

    .line 746
    iget-object v2, p0, Lcom/delan/app/germanybluetooth/bluetooth/BleService$4;->this$0:Lcom/delan/app/germanybluetooth/bluetooth/BleService;

    invoke-static {v2}, Lcom/delan/app/germanybluetooth/bluetooth/BleService;->access$2006(Lcom/delan/app/germanybluetooth/bluetooth/BleService;)I

    move-result v2

    if-nez v2, :cond_b82

    .line 747
    iget-object v2, p0, Lcom/delan/app/germanybluetooth/bluetooth/BleService$4;->this$0:Lcom/delan/app/germanybluetooth/bluetooth/BleService;

    invoke-static {v2, v4}, Lcom/delan/app/germanybluetooth/bluetooth/BleService;->access$2002(Lcom/delan/app/germanybluetooth/bluetooth/BleService;I)I

    .line 748
    iget-object v2, p0, Lcom/delan/app/germanybluetooth/bluetooth/BleService$4;->this$0:Lcom/delan/app/germanybluetooth/bluetooth/BleService;

    invoke-static {v2}, Lcom/delan/app/germanybluetooth/bluetooth/BleService;->access$100(Lcom/delan/app/germanybluetooth/bluetooth/BleService;)Landroid/os/Handler;

    move-result-object v2

    if-eqz v2, :cond_c7b

    .line 749
    iget-object v2, p0, Lcom/delan/app/germanybluetooth/bluetooth/BleService$4;->this$0:Lcom/delan/app/germanybluetooth/bluetooth/BleService;

    invoke-static {v2}, Lcom/delan/app/germanybluetooth/bluetooth/BleService;->access$100(Lcom/delan/app/germanybluetooth/bluetooth/BleService;)Landroid/os/Handler;

    move-result-object v2

    const-string v3, "47e9ef59-47e9-11e4-8939-164230d1df67"

    invoke-virtual {v2, v6, v3}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v2}, Landroid/os/Message;->sendToTarget()V

    .line 755
    :cond_b82
    :goto_b82
    iget-object v2, p0, Lcom/delan/app/germanybluetooth/bluetooth/BleService$4;->this$0:Lcom/delan/app/germanybluetooth/bluetooth/BleService;

    invoke-static {v2}, Lcom/delan/app/germanybluetooth/bluetooth/BleService;->access$2100(Lcom/delan/app/germanybluetooth/bluetooth/BleService;)I

    move-result v2

    if-eq v2, v4, :cond_bae

    .line 756
    iget-object v2, p0, Lcom/delan/app/germanybluetooth/bluetooth/BleService$4;->this$0:Lcom/delan/app/germanybluetooth/bluetooth/BleService;

    invoke-static {v2}, Lcom/delan/app/germanybluetooth/bluetooth/BleService;->access$2106(Lcom/delan/app/germanybluetooth/bluetooth/BleService;)I

    move-result v2

    if-nez v2, :cond_bae

    .line 757
    iget-object v2, p0, Lcom/delan/app/germanybluetooth/bluetooth/BleService$4;->this$0:Lcom/delan/app/germanybluetooth/bluetooth/BleService;

    invoke-static {v2, v4}, Lcom/delan/app/germanybluetooth/bluetooth/BleService;->access$2102(Lcom/delan/app/germanybluetooth/bluetooth/BleService;I)I

    .line 758
    iget-object v2, p0, Lcom/delan/app/germanybluetooth/bluetooth/BleService$4;->this$0:Lcom/delan/app/germanybluetooth/bluetooth/BleService;

    invoke-static {v2}, Lcom/delan/app/germanybluetooth/bluetooth/BleService;->access$100(Lcom/delan/app/germanybluetooth/bluetooth/BleService;)Landroid/os/Handler;

    move-result-object v2

    if-eqz v2, :cond_c87

    .line 759
    iget-object v2, p0, Lcom/delan/app/germanybluetooth/bluetooth/BleService$4;->this$0:Lcom/delan/app/germanybluetooth/bluetooth/BleService;

    invoke-static {v2}, Lcom/delan/app/germanybluetooth/bluetooth/BleService;->access$100(Lcom/delan/app/germanybluetooth/bluetooth/BleService;)Landroid/os/Handler;

    move-result-object v2

    const-string v3, "47e9ef61-47e9-11e4-8939-164230d1df67"

    invoke-virtual {v2, v6, v3}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v2}, Landroid/os/Message;->sendToTarget()V

    .line 762
    :cond_bae
    :goto_bae
    throw v1

    .line 581
    :cond_baf
    iget-object v2, p0, Lcom/delan/app/germanybluetooth/bluetooth/BleService$4;->this$0:Lcom/delan/app/germanybluetooth/bluetooth/BleService;

    invoke-static {v2, v5}, Lcom/delan/app/germanybluetooth/bluetooth/BleService;->access$302(Lcom/delan/app/germanybluetooth/bluetooth/BleService;I)I

    .line 582
    const-string v2, "uiHandler == null"

    invoke-static {v2}, Lcom/apkfuns/logutils/LogUtils;->e(Ljava/lang/Object;)V

    goto/16 :goto_896

    .line 591
    :cond_bbb
    iget-object v2, p0, Lcom/delan/app/germanybluetooth/bluetooth/BleService$4;->this$0:Lcom/delan/app/germanybluetooth/bluetooth/BleService;

    invoke-static {v2, v5}, Lcom/delan/app/germanybluetooth/bluetooth/BleService;->access$402(Lcom/delan/app/germanybluetooth/bluetooth/BleService;I)I

    .line 592
    const-string v2, "uiHandler == null"

    invoke-static {v2}, Lcom/apkfuns/logutils/LogUtils;->e(Ljava/lang/Object;)V

    goto/16 :goto_8c2

    .line 601
    :cond_bc7
    iget-object v2, p0, Lcom/delan/app/germanybluetooth/bluetooth/BleService$4;->this$0:Lcom/delan/app/germanybluetooth/bluetooth/BleService;

    invoke-static {v2, v5}, Lcom/delan/app/germanybluetooth/bluetooth/BleService;->access$502(Lcom/delan/app/germanybluetooth/bluetooth/BleService;I)I

    .line 602
    const-string v2, "uiHandler == null"

    invoke-static {v2}, Lcom/apkfuns/logutils/LogUtils;->e(Ljava/lang/Object;)V

    goto/16 :goto_8ee

    .line 611
    :cond_bd3
    iget-object v2, p0, Lcom/delan/app/germanybluetooth/bluetooth/BleService$4;->this$0:Lcom/delan/app/germanybluetooth/bluetooth/BleService;

    invoke-static {v2, v5}, Lcom/delan/app/germanybluetooth/bluetooth/BleService;->access$602(Lcom/delan/app/germanybluetooth/bluetooth/BleService;I)I

    .line 612
    const-string v2, "uiHandler == null"

    invoke-static {v2}, Lcom/apkfuns/logutils/LogUtils;->e(Ljava/lang/Object;)V

    goto/16 :goto_91a

    .line 621
    :cond_bdf
    iget-object v2, p0, Lcom/delan/app/germanybluetooth/bluetooth/BleService$4;->this$0:Lcom/delan/app/germanybluetooth/bluetooth/BleService;

    invoke-static {v2, v5}, Lcom/delan/app/germanybluetooth/bluetooth/BleService;->access$702(Lcom/delan/app/germanybluetooth/bluetooth/BleService;I)I

    .line 622
    const-string v2, "uiHandler == null"

    invoke-static {v2}, Lcom/apkfuns/logutils/LogUtils;->e(Ljava/lang/Object;)V

    goto/16 :goto_946

    .line 631
    :cond_beb
    iget-object v2, p0, Lcom/delan/app/germanybluetooth/bluetooth/BleService$4;->this$0:Lcom/delan/app/germanybluetooth/bluetooth/BleService;

    invoke-static {v2, v5}, Lcom/delan/app/germanybluetooth/bluetooth/BleService;->access$802(Lcom/delan/app/germanybluetooth/bluetooth/BleService;I)I

    .line 632
    const-string v2, "uiHandler == null"

    invoke-static {v2}, Lcom/apkfuns/logutils/LogUtils;->e(Ljava/lang/Object;)V

    goto/16 :goto_972

    .line 641
    :cond_bf7
    iget-object v2, p0, Lcom/delan/app/germanybluetooth/bluetooth/BleService$4;->this$0:Lcom/delan/app/germanybluetooth/bluetooth/BleService;

    invoke-static {v2, v5}, Lcom/delan/app/germanybluetooth/bluetooth/BleService;->access$902(Lcom/delan/app/germanybluetooth/bluetooth/BleService;I)I

    .line 642
    const-string v2, "uiHandler == null"

    invoke-static {v2}, Lcom/apkfuns/logutils/LogUtils;->e(Ljava/lang/Object;)V

    goto/16 :goto_99e

    .line 651
    :cond_c03
    iget-object v2, p0, Lcom/delan/app/germanybluetooth/bluetooth/BleService$4;->this$0:Lcom/delan/app/germanybluetooth/bluetooth/BleService;

    invoke-static {v2, v5}, Lcom/delan/app/germanybluetooth/bluetooth/BleService;->access$1002(Lcom/delan/app/germanybluetooth/bluetooth/BleService;I)I

    .line 652
    const-string v2, "uiHandler == null"

    invoke-static {v2}, Lcom/apkfuns/logutils/LogUtils;->e(Ljava/lang/Object;)V

    goto/16 :goto_9ca

    .line 661
    :cond_c0f
    iget-object v2, p0, Lcom/delan/app/germanybluetooth/bluetooth/BleService$4;->this$0:Lcom/delan/app/germanybluetooth/bluetooth/BleService;

    invoke-static {v2, v5}, Lcom/delan/app/germanybluetooth/bluetooth/BleService;->access$1102(Lcom/delan/app/germanybluetooth/bluetooth/BleService;I)I

    .line 662
    const-string v2, "uiHandler == null"

    invoke-static {v2}, Lcom/apkfuns/logutils/LogUtils;->e(Ljava/lang/Object;)V

    goto/16 :goto_9f6

    .line 671
    :cond_c1b
    iget-object v2, p0, Lcom/delan/app/germanybluetooth/bluetooth/BleService$4;->this$0:Lcom/delan/app/germanybluetooth/bluetooth/BleService;

    invoke-static {v2, v5}, Lcom/delan/app/germanybluetooth/bluetooth/BleService;->access$1202(Lcom/delan/app/germanybluetooth/bluetooth/BleService;I)I

    .line 672
    const-string v2, "uiHandler == null"

    invoke-static {v2}, Lcom/apkfuns/logutils/LogUtils;->e(Ljava/lang/Object;)V

    goto/16 :goto_a22

    .line 681
    :cond_c27
    iget-object v2, p0, Lcom/delan/app/germanybluetooth/bluetooth/BleService$4;->this$0:Lcom/delan/app/germanybluetooth/bluetooth/BleService;

    invoke-static {v2, v5}, Lcom/delan/app/germanybluetooth/bluetooth/BleService;->access$1302(Lcom/delan/app/germanybluetooth/bluetooth/BleService;I)I

    .line 682
    const-string v2, "uiHandler == null"

    invoke-static {v2}, Lcom/apkfuns/logutils/LogUtils;->e(Ljava/lang/Object;)V

    goto/16 :goto_a4e

    .line 691
    :cond_c33
    iget-object v2, p0, Lcom/delan/app/germanybluetooth/bluetooth/BleService$4;->this$0:Lcom/delan/app/germanybluetooth/bluetooth/BleService;

    invoke-static {v2, v5}, Lcom/delan/app/germanybluetooth/bluetooth/BleService;->access$1402(Lcom/delan/app/germanybluetooth/bluetooth/BleService;I)I

    .line 692
    const-string v2, "uiHandler == null"

    invoke-static {v2}, Lcom/apkfuns/logutils/LogUtils;->e(Ljava/lang/Object;)V

    goto/16 :goto_a7a

    .line 701
    :cond_c3f
    iget-object v2, p0, Lcom/delan/app/germanybluetooth/bluetooth/BleService$4;->this$0:Lcom/delan/app/germanybluetooth/bluetooth/BleService;

    invoke-static {v2, v5}, Lcom/delan/app/germanybluetooth/bluetooth/BleService;->access$1502(Lcom/delan/app/germanybluetooth/bluetooth/BleService;I)I

    .line 702
    const-string v2, "uiHandler == null"

    invoke-static {v2}, Lcom/apkfuns/logutils/LogUtils;->e(Ljava/lang/Object;)V

    goto/16 :goto_aa6

    .line 711
    :cond_c4b
    iget-object v2, p0, Lcom/delan/app/germanybluetooth/bluetooth/BleService$4;->this$0:Lcom/delan/app/germanybluetooth/bluetooth/BleService;

    invoke-static {v2, v5}, Lcom/delan/app/germanybluetooth/bluetooth/BleService;->access$1602(Lcom/delan/app/germanybluetooth/bluetooth/BleService;I)I

    .line 712
    const-string v2, "uiHandler == null"

    invoke-static {v2}, Lcom/apkfuns/logutils/LogUtils;->e(Ljava/lang/Object;)V

    goto/16 :goto_ad2

    .line 721
    :cond_c57
    iget-object v2, p0, Lcom/delan/app/germanybluetooth/bluetooth/BleService$4;->this$0:Lcom/delan/app/germanybluetooth/bluetooth/BleService;

    invoke-static {v2, v5}, Lcom/delan/app/germanybluetooth/bluetooth/BleService;->access$1702(Lcom/delan/app/germanybluetooth/bluetooth/BleService;I)I

    .line 722
    const-string v2, "uiHandler == null"

    invoke-static {v2}, Lcom/apkfuns/logutils/LogUtils;->e(Ljava/lang/Object;)V

    goto/16 :goto_afe

    .line 731
    :cond_c63
    iget-object v2, p0, Lcom/delan/app/germanybluetooth/bluetooth/BleService$4;->this$0:Lcom/delan/app/germanybluetooth/bluetooth/BleService;

    invoke-static {v2, v5}, Lcom/delan/app/germanybluetooth/bluetooth/BleService;->access$1802(Lcom/delan/app/germanybluetooth/bluetooth/BleService;I)I

    .line 732
    const-string v2, "uiHandler == null"

    invoke-static {v2}, Lcom/apkfuns/logutils/LogUtils;->e(Ljava/lang/Object;)V

    goto/16 :goto_b2a

    .line 741
    :cond_c6f
    iget-object v2, p0, Lcom/delan/app/germanybluetooth/bluetooth/BleService$4;->this$0:Lcom/delan/app/germanybluetooth/bluetooth/BleService;

    invoke-static {v2, v5}, Lcom/delan/app/germanybluetooth/bluetooth/BleService;->access$1902(Lcom/delan/app/germanybluetooth/bluetooth/BleService;I)I

    .line 742
    const-string v2, "uiHandler == null"

    invoke-static {v2}, Lcom/apkfuns/logutils/LogUtils;->e(Ljava/lang/Object;)V

    goto/16 :goto_b56

    .line 751
    :cond_c7b
    iget-object v2, p0, Lcom/delan/app/germanybluetooth/bluetooth/BleService$4;->this$0:Lcom/delan/app/germanybluetooth/bluetooth/BleService;

    invoke-static {v2, v5}, Lcom/delan/app/germanybluetooth/bluetooth/BleService;->access$2002(Lcom/delan/app/germanybluetooth/bluetooth/BleService;I)I

    .line 752
    const-string v2, "uiHandler == null"

    invoke-static {v2}, Lcom/apkfuns/logutils/LogUtils;->e(Ljava/lang/Object;)V

    goto/16 :goto_b82

    .line 761
    :cond_c87
    iget-object v2, p0, Lcom/delan/app/germanybluetooth/bluetooth/BleService$4;->this$0:Lcom/delan/app/germanybluetooth/bluetooth/BleService;

    invoke-static {v2, v5}, Lcom/delan/app/germanybluetooth/bluetooth/BleService;->access$2102(Lcom/delan/app/germanybluetooth/bluetooth/BleService;I)I

    .line 762
    const-string v2, "uiHandler == null"

    invoke-static {v2}, Lcom/apkfuns/logutils/LogUtils;->e(Ljava/lang/Object;)V

    goto/16 :goto_bae

    .line 767
    :cond_c93
    return-void
.end method

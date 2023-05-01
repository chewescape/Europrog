.class Lcom/delan/app/germanybluetooth/adapter/WeekTimeAdapter$ViewHolder$19;
.super Ljava/lang/Object;
.source "WeekTimeAdapter.java"

# interfaces
.implements Landroid/widget/SeekBar$OnSeekBarChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/delan/app/germanybluetooth/adapter/WeekTimeAdapter$ViewHolder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/delan/app/germanybluetooth/adapter/WeekTimeAdapter$ViewHolder;


# direct methods
.method constructor <init>(Lcom/delan/app/germanybluetooth/adapter/WeekTimeAdapter$ViewHolder;)V
    .registers 2
    .param p1, "this$1"    # Lcom/delan/app/germanybluetooth/adapter/WeekTimeAdapter$ViewHolder;

    .prologue
    .line 535
    iput-object p1, p0, Lcom/delan/app/germanybluetooth/adapter/WeekTimeAdapter$ViewHolder$19;->this$1:Lcom/delan/app/germanybluetooth/adapter/WeekTimeAdapter$ViewHolder;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onProgressChanged(Landroid/widget/SeekBar;IZ)V
    .registers 10
    .param p1, "seekBar"    # Landroid/widget/SeekBar;
    .param p2, "progress"    # I
    .param p3, "fromUser"    # Z

    .prologue
    const/16 v3, 0x91

    .line 538
    if-nez p3, :cond_5

    .line 552
    :cond_4
    :goto_4
    return-void

    .line 540
    :cond_5
    iget-object v4, p0, Lcom/delan/app/germanybluetooth/adapter/WeekTimeAdapter$ViewHolder$19;->this$1:Lcom/delan/app/germanybluetooth/adapter/WeekTimeAdapter$ViewHolder;

    iget-object v4, v4, Lcom/delan/app/germanybluetooth/adapter/WeekTimeAdapter$ViewHolder;->this$0:Lcom/delan/app/germanybluetooth/adapter/WeekTimeAdapter;

    iget-object v5, p0, Lcom/delan/app/germanybluetooth/adapter/WeekTimeAdapter$ViewHolder$19;->this$1:Lcom/delan/app/germanybluetooth/adapter/WeekTimeAdapter$ViewHolder;

    iget v5, v5, Lcom/delan/app/germanybluetooth/adapter/WeekTimeAdapter$ViewHolder;->position:I

    invoke-virtual {v4, v5}, Lcom/delan/app/germanybluetooth/adapter/WeekTimeAdapter;->getItem(I)Lcom/delan/app/germanybluetooth/bean/chars/CometSwitchPoint;

    move-result-object v0

    .line 541
    .local v0, "switchPoint":Lcom/delan/app/germanybluetooth/bean/chars/CometSwitchPoint;
    iget-object v4, p0, Lcom/delan/app/germanybluetooth/adapter/WeekTimeAdapter$ViewHolder$19;->this$1:Lcom/delan/app/germanybluetooth/adapter/WeekTimeAdapter$ViewHolder;

    iget-object v4, v4, Lcom/delan/app/germanybluetooth/adapter/WeekTimeAdapter$ViewHolder;->this$0:Lcom/delan/app/germanybluetooth/adapter/WeekTimeAdapter;

    invoke-static {v4, p2}, Lcom/delan/app/germanybluetooth/adapter/WeekTimeAdapter;->access$1000(Lcom/delan/app/germanybluetooth/adapter/WeekTimeAdapter;I)I

    move-result v1

    .line 542
    .local v1, "targetNum":I
    iget v4, v0, Lcom/delan/app/germanybluetooth/bean/chars/CometSwitchPoint;->startTime3:I

    if-eq v4, v1, :cond_4

    .line 544
    iget-object v4, p0, Lcom/delan/app/germanybluetooth/adapter/WeekTimeAdapter$ViewHolder$19;->this$1:Lcom/delan/app/germanybluetooth/adapter/WeekTimeAdapter$ViewHolder;

    iget-object v4, v4, Lcom/delan/app/germanybluetooth/adapter/WeekTimeAdapter$ViewHolder;->this$0:Lcom/delan/app/germanybluetooth/adapter/WeekTimeAdapter;

    invoke-static {v4}, Lcom/delan/app/germanybluetooth/adapter/WeekTimeAdapter;->access$1300(Lcom/delan/app/germanybluetooth/adapter/WeekTimeAdapter;)Landroid/app/Activity;

    move-result-object v4

    iput v1, v0, Lcom/delan/app/germanybluetooth/bean/chars/CometSwitchPoint;->startTime3:I

    invoke-static {v4, v1}, Lcom/delan/app/germanybluetooth/bean/chars/CometSwitchPoint;->numToTime(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v2

    .line 545
    .local v2, "time":Ljava/lang/String;
    iget-object v4, p0, Lcom/delan/app/germanybluetooth/adapter/WeekTimeAdapter$ViewHolder$19;->this$1:Lcom/delan/app/germanybluetooth/adapter/WeekTimeAdapter$ViewHolder;

    invoke-static {v4}, Lcom/delan/app/germanybluetooth/adapter/WeekTimeAdapter$ViewHolder;->access$600(Lcom/delan/app/germanybluetooth/adapter/WeekTimeAdapter$ViewHolder;)Landroid/widget/TextView;

    move-result-object v4

    invoke-virtual {v4, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 546
    iget-object v4, p0, Lcom/delan/app/germanybluetooth/adapter/WeekTimeAdapter$ViewHolder$19;->this$1:Lcom/delan/app/germanybluetooth/adapter/WeekTimeAdapter$ViewHolder;

    iget-object v4, v4, Lcom/delan/app/germanybluetooth/adapter/WeekTimeAdapter$ViewHolder;->seekEnd3:Landroid/widget/SeekBar;

    invoke-virtual {v4}, Landroid/widget/SeekBar;->getProgress()I

    move-result v4

    if-le p2, v4, :cond_6e

    .line 547
    iget-object v4, p0, Lcom/delan/app/germanybluetooth/adapter/WeekTimeAdapter$ViewHolder$19;->this$1:Lcom/delan/app/germanybluetooth/adapter/WeekTimeAdapter$ViewHolder;

    iget-object v4, v4, Lcom/delan/app/germanybluetooth/adapter/WeekTimeAdapter$ViewHolder;->seekEnd3:Landroid/widget/SeekBar;

    if-ne p2, v3, :cond_7e

    :goto_44
    invoke-virtual {v4, v3}, Landroid/widget/SeekBar;->setProgress(I)V

    .line 548
    iget-object v3, p0, Lcom/delan/app/germanybluetooth/adapter/WeekTimeAdapter$ViewHolder$19;->this$1:Lcom/delan/app/germanybluetooth/adapter/WeekTimeAdapter$ViewHolder;

    iget-object v3, v3, Lcom/delan/app/germanybluetooth/adapter/WeekTimeAdapter$ViewHolder;->this$0:Lcom/delan/app/germanybluetooth/adapter/WeekTimeAdapter;

    invoke-static {v3}, Lcom/delan/app/germanybluetooth/adapter/WeekTimeAdapter;->access$1300(Lcom/delan/app/germanybluetooth/adapter/WeekTimeAdapter;)Landroid/app/Activity;

    move-result-object v3

    iget-object v4, p0, Lcom/delan/app/germanybluetooth/adapter/WeekTimeAdapter$ViewHolder$19;->this$1:Lcom/delan/app/germanybluetooth/adapter/WeekTimeAdapter$ViewHolder;

    iget-object v4, v4, Lcom/delan/app/germanybluetooth/adapter/WeekTimeAdapter$ViewHolder;->this$0:Lcom/delan/app/germanybluetooth/adapter/WeekTimeAdapter;

    iget-object v5, p0, Lcom/delan/app/germanybluetooth/adapter/WeekTimeAdapter$ViewHolder$19;->this$1:Lcom/delan/app/germanybluetooth/adapter/WeekTimeAdapter$ViewHolder;

    iget-object v5, v5, Lcom/delan/app/germanybluetooth/adapter/WeekTimeAdapter$ViewHolder;->seekEnd3:Landroid/widget/SeekBar;

    invoke-virtual {v5}, Landroid/widget/SeekBar;->getProgress()I

    move-result v5

    invoke-static {v4, v5}, Lcom/delan/app/germanybluetooth/adapter/WeekTimeAdapter;->access$1000(Lcom/delan/app/germanybluetooth/adapter/WeekTimeAdapter;I)I

    move-result v4

    iput v4, v0, Lcom/delan/app/germanybluetooth/bean/chars/CometSwitchPoint;->endTime3:I

    invoke-static {v3, v4}, Lcom/delan/app/germanybluetooth/bean/chars/CometSwitchPoint;->numToTime(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v2

    .line 549
    iget-object v3, p0, Lcom/delan/app/germanybluetooth/adapter/WeekTimeAdapter$ViewHolder$19;->this$1:Lcom/delan/app/germanybluetooth/adapter/WeekTimeAdapter$ViewHolder;

    invoke-static {v3}, Lcom/delan/app/germanybluetooth/adapter/WeekTimeAdapter$ViewHolder;->access$800(Lcom/delan/app/germanybluetooth/adapter/WeekTimeAdapter$ViewHolder;)Landroid/widget/TextView;

    move-result-object v3

    invoke-virtual {v3, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 551
    :cond_6e
    iget-object v3, p0, Lcom/delan/app/germanybluetooth/adapter/WeekTimeAdapter$ViewHolder$19;->this$1:Lcom/delan/app/germanybluetooth/adapter/WeekTimeAdapter$ViewHolder;

    iget-object v3, v3, Lcom/delan/app/germanybluetooth/adapter/WeekTimeAdapter$ViewHolder;->this$0:Lcom/delan/app/germanybluetooth/adapter/WeekTimeAdapter;

    invoke-static {v3}, Lcom/delan/app/germanybluetooth/adapter/WeekTimeAdapter;->access$1200(Lcom/delan/app/germanybluetooth/adapter/WeekTimeAdapter;)Lcom/delan/app/germanybluetooth/adapter/WeekTimeAdapter$OnSwitchPointChangeListener;

    move-result-object v3

    iget-object v4, p0, Lcom/delan/app/germanybluetooth/adapter/WeekTimeAdapter$ViewHolder$19;->this$1:Lcom/delan/app/germanybluetooth/adapter/WeekTimeAdapter$ViewHolder;

    iget v4, v4, Lcom/delan/app/germanybluetooth/adapter/WeekTimeAdapter$ViewHolder;->position:I

    invoke-interface {v3, v4}, Lcom/delan/app/germanybluetooth/adapter/WeekTimeAdapter$OnSwitchPointChangeListener;->onSwitchPointChanged(I)V

    goto :goto_4

    .line 547
    :cond_7e
    add-int/lit8 v3, p2, 0x1

    goto :goto_44
.end method

.method public onStartTrackingTouch(Landroid/widget/SeekBar;)V
    .registers 2
    .param p1, "seekBar"    # Landroid/widget/SeekBar;

    .prologue
    .line 557
    return-void
.end method

.method public onStopTrackingTouch(Landroid/widget/SeekBar;)V
    .registers 2
    .param p1, "seekBar"    # Landroid/widget/SeekBar;

    .prologue
    .line 562
    return-void
.end method

.class Lcom/delan/app/germanybluetooth/adapter/ProgmaticSwitchPointAdapter$ViewHolder$22;
.super Ljava/lang/Object;
.source "ProgmaticSwitchPointAdapter.java"

# interfaces
.implements Landroid/widget/SeekBar$OnSeekBarChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/delan/app/germanybluetooth/adapter/ProgmaticSwitchPointAdapter$ViewHolder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/delan/app/germanybluetooth/adapter/ProgmaticSwitchPointAdapter$ViewHolder;


# direct methods
.method constructor <init>(Lcom/delan/app/germanybluetooth/adapter/ProgmaticSwitchPointAdapter$ViewHolder;)V
    .registers 2
    .param p1, "this$1"    # Lcom/delan/app/germanybluetooth/adapter/ProgmaticSwitchPointAdapter$ViewHolder;

    .prologue
    .line 737
    iput-object p1, p0, Lcom/delan/app/germanybluetooth/adapter/ProgmaticSwitchPointAdapter$ViewHolder$22;->this$1:Lcom/delan/app/germanybluetooth/adapter/ProgmaticSwitchPointAdapter$ViewHolder;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onProgressChanged(Landroid/widget/SeekBar;IZ)V
    .registers 9
    .param p1, "seekBar"    # Landroid/widget/SeekBar;
    .param p2, "progress"    # I
    .param p3, "fromUser"    # Z

    .prologue
    .line 741
    if-nez p3, :cond_3

    .line 752
    :goto_2
    return-void

    .line 744
    :cond_3
    iget-object v1, p0, Lcom/delan/app/germanybluetooth/adapter/ProgmaticSwitchPointAdapter$ViewHolder$22;->this$1:Lcom/delan/app/germanybluetooth/adapter/ProgmaticSwitchPointAdapter$ViewHolder;

    invoke-static {v1}, Lcom/delan/app/germanybluetooth/adapter/ProgmaticSwitchPointAdapter$ViewHolder;->access$700(Lcom/delan/app/germanybluetooth/adapter/ProgmaticSwitchPointAdapter$ViewHolder;)Landroid/widget/SeekBar;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/SeekBar;->getProgress()I

    move-result v1

    iget-object v2, p0, Lcom/delan/app/germanybluetooth/adapter/ProgmaticSwitchPointAdapter$ViewHolder$22;->this$1:Lcom/delan/app/germanybluetooth/adapter/ProgmaticSwitchPointAdapter$ViewHolder;

    invoke-static {v2}, Lcom/delan/app/germanybluetooth/adapter/ProgmaticSwitchPointAdapter$ViewHolder;->access$500(Lcom/delan/app/germanybluetooth/adapter/ProgmaticSwitchPointAdapter$ViewHolder;)Landroid/widget/SeekBar;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/SeekBar;->getProgress()I

    move-result v2

    if-ge v1, v2, :cond_2c

    .line 745
    iget-object v1, p0, Lcom/delan/app/germanybluetooth/adapter/ProgmaticSwitchPointAdapter$ViewHolder$22;->this$1:Lcom/delan/app/germanybluetooth/adapter/ProgmaticSwitchPointAdapter$ViewHolder;

    invoke-static {v1}, Lcom/delan/app/germanybluetooth/adapter/ProgmaticSwitchPointAdapter$ViewHolder;->access$700(Lcom/delan/app/germanybluetooth/adapter/ProgmaticSwitchPointAdapter$ViewHolder;)Landroid/widget/SeekBar;

    move-result-object v1

    iget-object v2, p0, Lcom/delan/app/germanybluetooth/adapter/ProgmaticSwitchPointAdapter$ViewHolder$22;->this$1:Lcom/delan/app/germanybluetooth/adapter/ProgmaticSwitchPointAdapter$ViewHolder;

    invoke-static {v2}, Lcom/delan/app/germanybluetooth/adapter/ProgmaticSwitchPointAdapter$ViewHolder;->access$500(Lcom/delan/app/germanybluetooth/adapter/ProgmaticSwitchPointAdapter$ViewHolder;)Landroid/widget/SeekBar;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/SeekBar;->getProgress()I

    move-result p2

    invoke-virtual {v1, p2}, Landroid/widget/SeekBar;->setProgress(I)V

    .line 747
    :cond_2c
    iget-object v1, p0, Lcom/delan/app/germanybluetooth/adapter/ProgmaticSwitchPointAdapter$ViewHolder$22;->this$1:Lcom/delan/app/germanybluetooth/adapter/ProgmaticSwitchPointAdapter$ViewHolder;

    iget-object v1, v1, Lcom/delan/app/germanybluetooth/adapter/ProgmaticSwitchPointAdapter$ViewHolder;->this$0:Lcom/delan/app/germanybluetooth/adapter/ProgmaticSwitchPointAdapter;

    iget-object v2, p0, Lcom/delan/app/germanybluetooth/adapter/ProgmaticSwitchPointAdapter$ViewHolder$22;->this$1:Lcom/delan/app/germanybluetooth/adapter/ProgmaticSwitchPointAdapter$ViewHolder;

    iget v2, v2, Lcom/delan/app/germanybluetooth/adapter/ProgmaticSwitchPointAdapter$ViewHolder;->position:I

    invoke-virtual {v1, v2}, Lcom/delan/app/germanybluetooth/adapter/ProgmaticSwitchPointAdapter;->getItem(I)Lcom/delan/app/germanybluetooth/bean/chars/ProgtimeProgmaticSwitchPoint;

    move-result-object v0

    .line 748
    .local v0, "point":Lcom/delan/app/germanybluetooth/bean/chars/ProgtimeProgmaticSwitchPoint;
    iget-object v1, p0, Lcom/delan/app/germanybluetooth/adapter/ProgmaticSwitchPointAdapter$ViewHolder$22;->this$1:Lcom/delan/app/germanybluetooth/adapter/ProgmaticSwitchPointAdapter$ViewHolder;

    iget-object v1, v1, Lcom/delan/app/germanybluetooth/adapter/ProgmaticSwitchPointAdapter$ViewHolder;->this$0:Lcom/delan/app/germanybluetooth/adapter/ProgmaticSwitchPointAdapter;

    invoke-static {v1, p2}, Lcom/delan/app/germanybluetooth/adapter/ProgmaticSwitchPointAdapter;->access$1800(Lcom/delan/app/germanybluetooth/adapter/ProgmaticSwitchPointAdapter;I)I

    move-result v1

    iput v1, v0, Lcom/delan/app/germanybluetooth/bean/chars/ProgtimeProgmaticSwitchPoint;->h4:I

    .line 749
    iget-object v1, p0, Lcom/delan/app/germanybluetooth/adapter/ProgmaticSwitchPointAdapter$ViewHolder$22;->this$1:Lcom/delan/app/germanybluetooth/adapter/ProgmaticSwitchPointAdapter$ViewHolder;

    iget-object v1, v1, Lcom/delan/app/germanybluetooth/adapter/ProgmaticSwitchPointAdapter$ViewHolder;->this$0:Lcom/delan/app/germanybluetooth/adapter/ProgmaticSwitchPointAdapter;

    invoke-static {v1, p2}, Lcom/delan/app/germanybluetooth/adapter/ProgmaticSwitchPointAdapter;->access$1900(Lcom/delan/app/germanybluetooth/adapter/ProgmaticSwitchPointAdapter;I)I

    move-result v1

    iput v1, v0, Lcom/delan/app/germanybluetooth/bean/chars/ProgtimeProgmaticSwitchPoint;->m4:I

    .line 750
    iget-object v1, p0, Lcom/delan/app/germanybluetooth/adapter/ProgmaticSwitchPointAdapter$ViewHolder$22;->this$1:Lcom/delan/app/germanybluetooth/adapter/ProgmaticSwitchPointAdapter$ViewHolder;

    invoke-static {v1}, Lcom/delan/app/germanybluetooth/adapter/ProgmaticSwitchPointAdapter$ViewHolder;->access$800(Lcom/delan/app/germanybluetooth/adapter/ProgmaticSwitchPointAdapter$ViewHolder;)Landroid/widget/TextView;

    move-result-object v1

    iget-object v2, p0, Lcom/delan/app/germanybluetooth/adapter/ProgmaticSwitchPointAdapter$ViewHolder$22;->this$1:Lcom/delan/app/germanybluetooth/adapter/ProgmaticSwitchPointAdapter$ViewHolder;

    iget-object v2, v2, Lcom/delan/app/germanybluetooth/adapter/ProgmaticSwitchPointAdapter$ViewHolder;->this$0:Lcom/delan/app/germanybluetooth/adapter/ProgmaticSwitchPointAdapter;

    invoke-static {v2}, Lcom/delan/app/germanybluetooth/adapter/ProgmaticSwitchPointAdapter;->access$2200(Lcom/delan/app/germanybluetooth/adapter/ProgmaticSwitchPointAdapter;)Landroid/app/Activity;

    move-result-object v2

    iget v3, v0, Lcom/delan/app/germanybluetooth/bean/chars/ProgtimeProgmaticSwitchPoint;->h4:I

    iget v4, v0, Lcom/delan/app/germanybluetooth/bean/chars/ProgtimeProgmaticSwitchPoint;->m4:I

    invoke-static {v2, v3, v4}, Lcom/delan/app/germanybluetooth/bean/chars/ProgtimeProgmaticSwitchPoint;->hourMinuteToStr(Landroid/content/Context;II)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 751
    iget-object v1, p0, Lcom/delan/app/germanybluetooth/adapter/ProgmaticSwitchPointAdapter$ViewHolder$22;->this$1:Lcom/delan/app/germanybluetooth/adapter/ProgmaticSwitchPointAdapter$ViewHolder;

    iget-object v1, v1, Lcom/delan/app/germanybluetooth/adapter/ProgmaticSwitchPointAdapter$ViewHolder;->this$0:Lcom/delan/app/germanybluetooth/adapter/ProgmaticSwitchPointAdapter;

    invoke-static {v1}, Lcom/delan/app/germanybluetooth/adapter/ProgmaticSwitchPointAdapter;->access$2100(Lcom/delan/app/germanybluetooth/adapter/ProgmaticSwitchPointAdapter;)Lcom/delan/app/germanybluetooth/adapter/ProgmaticSwitchPointAdapter$OnSwitchPointChangeListener;

    move-result-object v1

    iget-object v2, p0, Lcom/delan/app/germanybluetooth/adapter/ProgmaticSwitchPointAdapter$ViewHolder$22;->this$1:Lcom/delan/app/germanybluetooth/adapter/ProgmaticSwitchPointAdapter$ViewHolder;

    iget v2, v2, Lcom/delan/app/germanybluetooth/adapter/ProgmaticSwitchPointAdapter$ViewHolder;->position:I

    invoke-interface {v1, v2}, Lcom/delan/app/germanybluetooth/adapter/ProgmaticSwitchPointAdapter$OnSwitchPointChangeListener;->onSwitchPointChanged(I)V

    goto :goto_2
.end method

.method public onStartTrackingTouch(Landroid/widget/SeekBar;)V
    .registers 2
    .param p1, "seekBar"    # Landroid/widget/SeekBar;

    .prologue
    .line 757
    return-void
.end method

.method public onStopTrackingTouch(Landroid/widget/SeekBar;)V
    .registers 2
    .param p1, "seekBar"    # Landroid/widget/SeekBar;

    .prologue
    .line 762
    return-void
.end method

.class Lcom/delan/app/germanybluetooth/adapter/ProgtimeSwitchPointAdapter$ViewHolder$18;
.super Ljava/lang/Object;
.source "ProgtimeSwitchPointAdapter.java"

# interfaces
.implements Landroid/widget/SeekBar$OnSeekBarChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/delan/app/germanybluetooth/adapter/ProgtimeSwitchPointAdapter$ViewHolder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/delan/app/germanybluetooth/adapter/ProgtimeSwitchPointAdapter$ViewHolder;


# direct methods
.method constructor <init>(Lcom/delan/app/germanybluetooth/adapter/ProgtimeSwitchPointAdapter$ViewHolder;)V
    .registers 2
    .param p1, "this$1"    # Lcom/delan/app/germanybluetooth/adapter/ProgtimeSwitchPointAdapter$ViewHolder;

    .prologue
    .line 610
    iput-object p1, p0, Lcom/delan/app/germanybluetooth/adapter/ProgtimeSwitchPointAdapter$ViewHolder$18;->this$1:Lcom/delan/app/germanybluetooth/adapter/ProgtimeSwitchPointAdapter$ViewHolder;

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
    .line 614
    if-nez p3, :cond_3

    .line 630
    :cond_2
    :goto_2
    return-void

    .line 616
    :cond_3
    iget-object v1, p0, Lcom/delan/app/germanybluetooth/adapter/ProgtimeSwitchPointAdapter$ViewHolder$18;->this$1:Lcom/delan/app/germanybluetooth/adapter/ProgtimeSwitchPointAdapter$ViewHolder;

    iget-object v1, v1, Lcom/delan/app/germanybluetooth/adapter/ProgtimeSwitchPointAdapter$ViewHolder;->this$0:Lcom/delan/app/germanybluetooth/adapter/ProgtimeSwitchPointAdapter;

    iget-object v2, p0, Lcom/delan/app/germanybluetooth/adapter/ProgtimeSwitchPointAdapter$ViewHolder$18;->this$1:Lcom/delan/app/germanybluetooth/adapter/ProgtimeSwitchPointAdapter$ViewHolder;

    iget v2, v2, Lcom/delan/app/germanybluetooth/adapter/ProgtimeSwitchPointAdapter$ViewHolder;->position:I

    invoke-virtual {v1, v2}, Lcom/delan/app/germanybluetooth/adapter/ProgtimeSwitchPointAdapter;->getItem(I)Lcom/delan/app/germanybluetooth/bean/chars/ProgtimeProgmaticSwitchPoint;

    move-result-object v0

    .line 617
    .local v0, "point":Lcom/delan/app/germanybluetooth/bean/chars/ProgtimeProgmaticSwitchPoint;
    iget-object v1, p0, Lcom/delan/app/germanybluetooth/adapter/ProgtimeSwitchPointAdapter$ViewHolder$18;->this$1:Lcom/delan/app/germanybluetooth/adapter/ProgtimeSwitchPointAdapter$ViewHolder;

    iget-object v1, v1, Lcom/delan/app/germanybluetooth/adapter/ProgtimeSwitchPointAdapter$ViewHolder;->this$0:Lcom/delan/app/germanybluetooth/adapter/ProgtimeSwitchPointAdapter;

    iget v2, v0, Lcom/delan/app/germanybluetooth/bean/chars/ProgtimeProgmaticSwitchPoint;->h3:I

    iget v3, v0, Lcom/delan/app/germanybluetooth/bean/chars/ProgtimeProgmaticSwitchPoint;->m3:I

    invoke-static {v1, v2, v3}, Lcom/delan/app/germanybluetooth/adapter/ProgtimeSwitchPointAdapter;->access$2300(Lcom/delan/app/germanybluetooth/adapter/ProgtimeSwitchPointAdapter;II)I

    move-result v1

    if-eq v1, p2, :cond_2

    .line 619
    iget-object v1, p0, Lcom/delan/app/germanybluetooth/adapter/ProgtimeSwitchPointAdapter$ViewHolder$18;->this$1:Lcom/delan/app/germanybluetooth/adapter/ProgtimeSwitchPointAdapter$ViewHolder;

    iget-object v1, v1, Lcom/delan/app/germanybluetooth/adapter/ProgtimeSwitchPointAdapter$ViewHolder;->this$0:Lcom/delan/app/germanybluetooth/adapter/ProgtimeSwitchPointAdapter;

    invoke-static {v1, p2}, Lcom/delan/app/germanybluetooth/adapter/ProgtimeSwitchPointAdapter;->access$1800(Lcom/delan/app/germanybluetooth/adapter/ProgtimeSwitchPointAdapter;I)I

    move-result v1

    iput v1, v0, Lcom/delan/app/germanybluetooth/bean/chars/ProgtimeProgmaticSwitchPoint;->h3:I

    .line 620
    iget-object v1, p0, Lcom/delan/app/germanybluetooth/adapter/ProgtimeSwitchPointAdapter$ViewHolder$18;->this$1:Lcom/delan/app/germanybluetooth/adapter/ProgtimeSwitchPointAdapter$ViewHolder;

    iget-object v1, v1, Lcom/delan/app/germanybluetooth/adapter/ProgtimeSwitchPointAdapter$ViewHolder;->this$0:Lcom/delan/app/germanybluetooth/adapter/ProgtimeSwitchPointAdapter;

    invoke-static {v1, p2}, Lcom/delan/app/germanybluetooth/adapter/ProgtimeSwitchPointAdapter;->access$1900(Lcom/delan/app/germanybluetooth/adapter/ProgtimeSwitchPointAdapter;I)I

    move-result v1

    iput v1, v0, Lcom/delan/app/germanybluetooth/bean/chars/ProgtimeProgmaticSwitchPoint;->m3:I

    .line 621
    iget-object v1, p0, Lcom/delan/app/germanybluetooth/adapter/ProgtimeSwitchPointAdapter$ViewHolder$18;->this$1:Lcom/delan/app/germanybluetooth/adapter/ProgtimeSwitchPointAdapter$ViewHolder;

    invoke-static {v1}, Lcom/delan/app/germanybluetooth/adapter/ProgtimeSwitchPointAdapter$ViewHolder;->access$600(Lcom/delan/app/germanybluetooth/adapter/ProgtimeSwitchPointAdapter$ViewHolder;)Landroid/widget/TextView;

    move-result-object v1

    iget-object v2, p0, Lcom/delan/app/germanybluetooth/adapter/ProgtimeSwitchPointAdapter$ViewHolder$18;->this$1:Lcom/delan/app/germanybluetooth/adapter/ProgtimeSwitchPointAdapter$ViewHolder;

    iget-object v2, v2, Lcom/delan/app/germanybluetooth/adapter/ProgtimeSwitchPointAdapter$ViewHolder;->this$0:Lcom/delan/app/germanybluetooth/adapter/ProgtimeSwitchPointAdapter;

    invoke-static {v2}, Lcom/delan/app/germanybluetooth/adapter/ProgtimeSwitchPointAdapter;->access$2200(Lcom/delan/app/germanybluetooth/adapter/ProgtimeSwitchPointAdapter;)Landroid/app/Activity;

    move-result-object v2

    iget v3, v0, Lcom/delan/app/germanybluetooth/bean/chars/ProgtimeProgmaticSwitchPoint;->h3:I

    iget v4, v0, Lcom/delan/app/germanybluetooth/bean/chars/ProgtimeProgmaticSwitchPoint;->m3:I

    invoke-static {v2, v3, v4}, Lcom/delan/app/germanybluetooth/bean/chars/ProgtimeProgmaticSwitchPoint;->hourMinuteToStr(Landroid/content/Context;II)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 622
    iget-object v1, p0, Lcom/delan/app/germanybluetooth/adapter/ProgtimeSwitchPointAdapter$ViewHolder$18;->this$1:Lcom/delan/app/germanybluetooth/adapter/ProgtimeSwitchPointAdapter$ViewHolder;

    invoke-static {v1}, Lcom/delan/app/germanybluetooth/adapter/ProgtimeSwitchPointAdapter$ViewHolder;->access$700(Lcom/delan/app/germanybluetooth/adapter/ProgtimeSwitchPointAdapter$ViewHolder;)Landroid/widget/SeekBar;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/SeekBar;->getProgress()I

    move-result v1

    if-le p2, v1, :cond_8f

    .line 623
    iget-object v1, p0, Lcom/delan/app/germanybluetooth/adapter/ProgtimeSwitchPointAdapter$ViewHolder$18;->this$1:Lcom/delan/app/germanybluetooth/adapter/ProgtimeSwitchPointAdapter$ViewHolder;

    invoke-static {v1}, Lcom/delan/app/germanybluetooth/adapter/ProgtimeSwitchPointAdapter$ViewHolder;->access$700(Lcom/delan/app/germanybluetooth/adapter/ProgtimeSwitchPointAdapter$ViewHolder;)Landroid/widget/SeekBar;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/SeekBar;->getMax()I

    move-result v1

    if-ge p2, v1, :cond_64

    .line 624
    add-int/lit8 p2, p2, 0x1

    .line 625
    :cond_64
    iget-object v1, p0, Lcom/delan/app/germanybluetooth/adapter/ProgtimeSwitchPointAdapter$ViewHolder$18;->this$1:Lcom/delan/app/germanybluetooth/adapter/ProgtimeSwitchPointAdapter$ViewHolder;

    iget-object v1, v1, Lcom/delan/app/germanybluetooth/adapter/ProgtimeSwitchPointAdapter$ViewHolder;->this$0:Lcom/delan/app/germanybluetooth/adapter/ProgtimeSwitchPointAdapter;

    invoke-static {v1, p2}, Lcom/delan/app/germanybluetooth/adapter/ProgtimeSwitchPointAdapter;->access$1800(Lcom/delan/app/germanybluetooth/adapter/ProgtimeSwitchPointAdapter;I)I

    move-result v1

    iput v1, v0, Lcom/delan/app/germanybluetooth/bean/chars/ProgtimeProgmaticSwitchPoint;->h4:I

    .line 626
    iget-object v1, p0, Lcom/delan/app/germanybluetooth/adapter/ProgtimeSwitchPointAdapter$ViewHolder$18;->this$1:Lcom/delan/app/germanybluetooth/adapter/ProgtimeSwitchPointAdapter$ViewHolder;

    iget-object v1, v1, Lcom/delan/app/germanybluetooth/adapter/ProgtimeSwitchPointAdapter$ViewHolder;->this$0:Lcom/delan/app/germanybluetooth/adapter/ProgtimeSwitchPointAdapter;

    invoke-static {v1, p2}, Lcom/delan/app/germanybluetooth/adapter/ProgtimeSwitchPointAdapter;->access$1900(Lcom/delan/app/germanybluetooth/adapter/ProgtimeSwitchPointAdapter;I)I

    move-result v1

    iput v1, v0, Lcom/delan/app/germanybluetooth/bean/chars/ProgtimeProgmaticSwitchPoint;->m4:I

    .line 627
    iget-object v1, p0, Lcom/delan/app/germanybluetooth/adapter/ProgtimeSwitchPointAdapter$ViewHolder$18;->this$1:Lcom/delan/app/germanybluetooth/adapter/ProgtimeSwitchPointAdapter$ViewHolder;

    iget-object v1, v1, Lcom/delan/app/germanybluetooth/adapter/ProgtimeSwitchPointAdapter$ViewHolder;->this$0:Lcom/delan/app/germanybluetooth/adapter/ProgtimeSwitchPointAdapter;

    iget v2, v0, Lcom/delan/app/germanybluetooth/bean/chars/ProgtimeProgmaticSwitchPoint;->h4:I

    iget v3, v0, Lcom/delan/app/germanybluetooth/bean/chars/ProgtimeProgmaticSwitchPoint;->m4:I

    iget-object v4, p0, Lcom/delan/app/germanybluetooth/adapter/ProgtimeSwitchPointAdapter$ViewHolder$18;->this$1:Lcom/delan/app/germanybluetooth/adapter/ProgtimeSwitchPointAdapter$ViewHolder;

    invoke-static {v4}, Lcom/delan/app/germanybluetooth/adapter/ProgtimeSwitchPointAdapter$ViewHolder;->access$700(Lcom/delan/app/germanybluetooth/adapter/ProgtimeSwitchPointAdapter$ViewHolder;)Landroid/widget/SeekBar;

    move-result-object v4

    iget-object v5, p0, Lcom/delan/app/germanybluetooth/adapter/ProgtimeSwitchPointAdapter$ViewHolder$18;->this$1:Lcom/delan/app/germanybluetooth/adapter/ProgtimeSwitchPointAdapter$ViewHolder;

    invoke-static {v5}, Lcom/delan/app/germanybluetooth/adapter/ProgtimeSwitchPointAdapter$ViewHolder;->access$800(Lcom/delan/app/germanybluetooth/adapter/ProgtimeSwitchPointAdapter$ViewHolder;)Landroid/widget/TextView;

    move-result-object v5

    invoke-static {v1, v2, v3, v4, v5}, Lcom/delan/app/germanybluetooth/adapter/ProgtimeSwitchPointAdapter;->access$2000(Lcom/delan/app/germanybluetooth/adapter/ProgtimeSwitchPointAdapter;IILandroid/widget/SeekBar;Landroid/widget/TextView;)V

    .line 629
    :cond_8f
    iget-object v1, p0, Lcom/delan/app/germanybluetooth/adapter/ProgtimeSwitchPointAdapter$ViewHolder$18;->this$1:Lcom/delan/app/germanybluetooth/adapter/ProgtimeSwitchPointAdapter$ViewHolder;

    iget-object v1, v1, Lcom/delan/app/germanybluetooth/adapter/ProgtimeSwitchPointAdapter$ViewHolder;->this$0:Lcom/delan/app/germanybluetooth/adapter/ProgtimeSwitchPointAdapter;

    invoke-static {v1}, Lcom/delan/app/germanybluetooth/adapter/ProgtimeSwitchPointAdapter;->access$2100(Lcom/delan/app/germanybluetooth/adapter/ProgtimeSwitchPointAdapter;)Lcom/delan/app/germanybluetooth/adapter/ProgtimeSwitchPointAdapter$OnSwitchPointChangeListener;

    move-result-object v1

    iget-object v2, p0, Lcom/delan/app/germanybluetooth/adapter/ProgtimeSwitchPointAdapter$ViewHolder$18;->this$1:Lcom/delan/app/germanybluetooth/adapter/ProgtimeSwitchPointAdapter$ViewHolder;

    iget v2, v2, Lcom/delan/app/germanybluetooth/adapter/ProgtimeSwitchPointAdapter$ViewHolder;->position:I

    invoke-interface {v1, v2}, Lcom/delan/app/germanybluetooth/adapter/ProgtimeSwitchPointAdapter$OnSwitchPointChangeListener;->onSwitchPointChanged(I)V

    goto/16 :goto_2
.end method

.method public onStartTrackingTouch(Landroid/widget/SeekBar;)V
    .registers 2
    .param p1, "seekBar"    # Landroid/widget/SeekBar;

    .prologue
    .line 635
    return-void
.end method

.method public onStopTrackingTouch(Landroid/widget/SeekBar;)V
    .registers 2
    .param p1, "seekBar"    # Landroid/widget/SeekBar;

    .prologue
    .line 640
    return-void
.end method

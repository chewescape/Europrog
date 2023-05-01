.class Lcom/delan/app/germanybluetooth/adapter/WeekTimeAdapter$ViewHolder$6$1;
.super Ljava/lang/Object;
.source "WeekTimeAdapter.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/delan/app/germanybluetooth/adapter/WeekTimeAdapter$ViewHolder$6;->onLongUpdate()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$2:Lcom/delan/app/germanybluetooth/adapter/WeekTimeAdapter$ViewHolder$6;


# direct methods
.method constructor <init>(Lcom/delan/app/germanybluetooth/adapter/WeekTimeAdapter$ViewHolder$6;)V
    .registers 2
    .param p1, "this$2"    # Lcom/delan/app/germanybluetooth/adapter/WeekTimeAdapter$ViewHolder$6;

    .prologue
    .line 291
    iput-object p1, p0, Lcom/delan/app/germanybluetooth/adapter/WeekTimeAdapter$ViewHolder$6$1;->this$2:Lcom/delan/app/germanybluetooth/adapter/WeekTimeAdapter$ViewHolder$6;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 6

    .prologue
    .line 295
    iget-object v1, p0, Lcom/delan/app/germanybluetooth/adapter/WeekTimeAdapter$ViewHolder$6$1;->this$2:Lcom/delan/app/germanybluetooth/adapter/WeekTimeAdapter$ViewHolder$6;

    iget-object v1, v1, Lcom/delan/app/germanybluetooth/adapter/WeekTimeAdapter$ViewHolder$6;->this$1:Lcom/delan/app/germanybluetooth/adapter/WeekTimeAdapter$ViewHolder;

    iget-object v1, v1, Lcom/delan/app/germanybluetooth/adapter/WeekTimeAdapter$ViewHolder;->this$0:Lcom/delan/app/germanybluetooth/adapter/WeekTimeAdapter;

    iget-object v2, p0, Lcom/delan/app/germanybluetooth/adapter/WeekTimeAdapter$ViewHolder$6$1;->this$2:Lcom/delan/app/germanybluetooth/adapter/WeekTimeAdapter$ViewHolder$6;

    iget-object v2, v2, Lcom/delan/app/germanybluetooth/adapter/WeekTimeAdapter$ViewHolder$6;->this$1:Lcom/delan/app/germanybluetooth/adapter/WeekTimeAdapter$ViewHolder;

    iget v2, v2, Lcom/delan/app/germanybluetooth/adapter/WeekTimeAdapter$ViewHolder;->position:I

    invoke-virtual {v1, v2}, Lcom/delan/app/germanybluetooth/adapter/WeekTimeAdapter;->getItem(I)Lcom/delan/app/germanybluetooth/bean/chars/CometSwitchPoint;

    move-result-object v0

    .line 296
    .local v0, "point":Lcom/delan/app/germanybluetooth/bean/chars/CometSwitchPoint;
    iget-object v1, p0, Lcom/delan/app/germanybluetooth/adapter/WeekTimeAdapter$ViewHolder$6$1;->this$2:Lcom/delan/app/germanybluetooth/adapter/WeekTimeAdapter$ViewHolder$6;

    iget-object v1, v1, Lcom/delan/app/germanybluetooth/adapter/WeekTimeAdapter$ViewHolder$6;->this$1:Lcom/delan/app/germanybluetooth/adapter/WeekTimeAdapter$ViewHolder;

    iget-object v1, v1, Lcom/delan/app/germanybluetooth/adapter/WeekTimeAdapter$ViewHolder;->seekStart3:Landroid/widget/SeekBar;

    invoke-virtual {v1}, Landroid/widget/SeekBar;->getProgress()I

    move-result v1

    iget-object v2, p0, Lcom/delan/app/germanybluetooth/adapter/WeekTimeAdapter$ViewHolder$6$1;->this$2:Lcom/delan/app/germanybluetooth/adapter/WeekTimeAdapter$ViewHolder$6;

    iget-object v2, v2, Lcom/delan/app/germanybluetooth/adapter/WeekTimeAdapter$ViewHolder$6;->this$1:Lcom/delan/app/germanybluetooth/adapter/WeekTimeAdapter$ViewHolder;

    iget-object v2, v2, Lcom/delan/app/germanybluetooth/adapter/WeekTimeAdapter$ViewHolder;->seekStart3:Landroid/widget/SeekBar;

    invoke-virtual {v2}, Landroid/widget/SeekBar;->getMax()I

    move-result v2

    if-ge v1, v2, :cond_c5

    .line 297
    iget-object v1, p0, Lcom/delan/app/germanybluetooth/adapter/WeekTimeAdapter$ViewHolder$6$1;->this$2:Lcom/delan/app/germanybluetooth/adapter/WeekTimeAdapter$ViewHolder$6;

    iget-object v1, v1, Lcom/delan/app/germanybluetooth/adapter/WeekTimeAdapter$ViewHolder$6;->this$1:Lcom/delan/app/germanybluetooth/adapter/WeekTimeAdapter$ViewHolder;

    iget-object v1, v1, Lcom/delan/app/germanybluetooth/adapter/WeekTimeAdapter$ViewHolder;->this$0:Lcom/delan/app/germanybluetooth/adapter/WeekTimeAdapter;

    iget-object v2, p0, Lcom/delan/app/germanybluetooth/adapter/WeekTimeAdapter$ViewHolder$6$1;->this$2:Lcom/delan/app/germanybluetooth/adapter/WeekTimeAdapter$ViewHolder$6;

    iget-object v2, v2, Lcom/delan/app/germanybluetooth/adapter/WeekTimeAdapter$ViewHolder$6;->this$1:Lcom/delan/app/germanybluetooth/adapter/WeekTimeAdapter$ViewHolder;

    iget-object v2, v2, Lcom/delan/app/germanybluetooth/adapter/WeekTimeAdapter$ViewHolder;->this$0:Lcom/delan/app/germanybluetooth/adapter/WeekTimeAdapter;

    iget-object v3, p0, Lcom/delan/app/germanybluetooth/adapter/WeekTimeAdapter$ViewHolder$6$1;->this$2:Lcom/delan/app/germanybluetooth/adapter/WeekTimeAdapter$ViewHolder$6;

    iget-object v3, v3, Lcom/delan/app/germanybluetooth/adapter/WeekTimeAdapter$ViewHolder$6;->this$1:Lcom/delan/app/germanybluetooth/adapter/WeekTimeAdapter$ViewHolder;

    iget-object v3, v3, Lcom/delan/app/germanybluetooth/adapter/WeekTimeAdapter$ViewHolder;->seekStart3:Landroid/widget/SeekBar;

    invoke-virtual {v3}, Landroid/widget/SeekBar;->getProgress()I

    move-result v3

    add-int/lit8 v3, v3, 0x1

    invoke-static {v2, v3}, Lcom/delan/app/germanybluetooth/adapter/WeekTimeAdapter;->access$1000(Lcom/delan/app/germanybluetooth/adapter/WeekTimeAdapter;I)I

    move-result v2

    iput v2, v0, Lcom/delan/app/germanybluetooth/bean/chars/CometSwitchPoint;->startTime3:I

    iget-object v3, p0, Lcom/delan/app/germanybluetooth/adapter/WeekTimeAdapter$ViewHolder$6$1;->this$2:Lcom/delan/app/germanybluetooth/adapter/WeekTimeAdapter$ViewHolder$6;

    iget-object v3, v3, Lcom/delan/app/germanybluetooth/adapter/WeekTimeAdapter$ViewHolder$6;->this$1:Lcom/delan/app/germanybluetooth/adapter/WeekTimeAdapter$ViewHolder;

    iget-object v3, v3, Lcom/delan/app/germanybluetooth/adapter/WeekTimeAdapter$ViewHolder;->seekStart3:Landroid/widget/SeekBar;

    iget-object v4, p0, Lcom/delan/app/germanybluetooth/adapter/WeekTimeAdapter$ViewHolder$6$1;->this$2:Lcom/delan/app/germanybluetooth/adapter/WeekTimeAdapter$ViewHolder$6;

    iget-object v4, v4, Lcom/delan/app/germanybluetooth/adapter/WeekTimeAdapter$ViewHolder$6;->this$1:Lcom/delan/app/germanybluetooth/adapter/WeekTimeAdapter$ViewHolder;

    invoke-static {v4}, Lcom/delan/app/germanybluetooth/adapter/WeekTimeAdapter$ViewHolder;->access$600(Lcom/delan/app/germanybluetooth/adapter/WeekTimeAdapter$ViewHolder;)Landroid/widget/TextView;

    move-result-object v4

    invoke-static {v1, v2, v3, v4}, Lcom/delan/app/germanybluetooth/adapter/WeekTimeAdapter;->access$1100(Lcom/delan/app/germanybluetooth/adapter/WeekTimeAdapter;ILandroid/widget/SeekBar;Landroid/widget/TextView;)V

    .line 298
    iget-object v1, p0, Lcom/delan/app/germanybluetooth/adapter/WeekTimeAdapter$ViewHolder$6$1;->this$2:Lcom/delan/app/germanybluetooth/adapter/WeekTimeAdapter$ViewHolder$6;

    iget-object v1, v1, Lcom/delan/app/germanybluetooth/adapter/WeekTimeAdapter$ViewHolder$6;->this$1:Lcom/delan/app/germanybluetooth/adapter/WeekTimeAdapter$ViewHolder;

    iget-object v1, v1, Lcom/delan/app/germanybluetooth/adapter/WeekTimeAdapter$ViewHolder;->seekStart3:Landroid/widget/SeekBar;

    invoke-virtual {v1}, Landroid/widget/SeekBar;->getProgress()I

    move-result v1

    iget-object v2, p0, Lcom/delan/app/germanybluetooth/adapter/WeekTimeAdapter$ViewHolder$6$1;->this$2:Lcom/delan/app/germanybluetooth/adapter/WeekTimeAdapter$ViewHolder$6;

    iget-object v2, v2, Lcom/delan/app/germanybluetooth/adapter/WeekTimeAdapter$ViewHolder$6;->this$1:Lcom/delan/app/germanybluetooth/adapter/WeekTimeAdapter$ViewHolder;

    iget-object v2, v2, Lcom/delan/app/germanybluetooth/adapter/WeekTimeAdapter$ViewHolder;->seekEnd3:Landroid/widget/SeekBar;

    invoke-virtual {v2}, Landroid/widget/SeekBar;->getProgress()I

    move-result v2

    if-le v1, v2, :cond_b2

    .line 299
    iget-object v1, p0, Lcom/delan/app/germanybluetooth/adapter/WeekTimeAdapter$ViewHolder$6$1;->this$2:Lcom/delan/app/germanybluetooth/adapter/WeekTimeAdapter$ViewHolder$6;

    iget-object v1, v1, Lcom/delan/app/germanybluetooth/adapter/WeekTimeAdapter$ViewHolder$6;->this$1:Lcom/delan/app/germanybluetooth/adapter/WeekTimeAdapter$ViewHolder;

    iget-object v2, v1, Lcom/delan/app/germanybluetooth/adapter/WeekTimeAdapter$ViewHolder;->this$0:Lcom/delan/app/germanybluetooth/adapter/WeekTimeAdapter;

    iget-object v1, p0, Lcom/delan/app/germanybluetooth/adapter/WeekTimeAdapter$ViewHolder$6$1;->this$2:Lcom/delan/app/germanybluetooth/adapter/WeekTimeAdapter$ViewHolder$6;

    iget-object v1, v1, Lcom/delan/app/germanybluetooth/adapter/WeekTimeAdapter$ViewHolder$6;->this$1:Lcom/delan/app/germanybluetooth/adapter/WeekTimeAdapter$ViewHolder;

    iget-object v1, v1, Lcom/delan/app/germanybluetooth/adapter/WeekTimeAdapter$ViewHolder;->seekStart3:Landroid/widget/SeekBar;

    invoke-virtual {v1}, Landroid/widget/SeekBar;->getProgress()I

    move-result v1

    iget-object v3, p0, Lcom/delan/app/germanybluetooth/adapter/WeekTimeAdapter$ViewHolder$6$1;->this$2:Lcom/delan/app/germanybluetooth/adapter/WeekTimeAdapter$ViewHolder$6;

    iget-object v3, v3, Lcom/delan/app/germanybluetooth/adapter/WeekTimeAdapter$ViewHolder$6;->this$1:Lcom/delan/app/germanybluetooth/adapter/WeekTimeAdapter$ViewHolder;

    iget-object v3, v3, Lcom/delan/app/germanybluetooth/adapter/WeekTimeAdapter$ViewHolder;->seekStart3:Landroid/widget/SeekBar;

    invoke-virtual {v3}, Landroid/widget/SeekBar;->getMax()I

    move-result v3

    if-eq v1, v3, :cond_c6

    iget-object v1, p0, Lcom/delan/app/germanybluetooth/adapter/WeekTimeAdapter$ViewHolder$6$1;->this$2:Lcom/delan/app/germanybluetooth/adapter/WeekTimeAdapter$ViewHolder$6;

    iget-object v1, v1, Lcom/delan/app/germanybluetooth/adapter/WeekTimeAdapter$ViewHolder$6;->this$1:Lcom/delan/app/germanybluetooth/adapter/WeekTimeAdapter$ViewHolder;

    iget-object v1, v1, Lcom/delan/app/germanybluetooth/adapter/WeekTimeAdapter$ViewHolder;->seekStart3:Landroid/widget/SeekBar;

    invoke-virtual {v1}, Landroid/widget/SeekBar;->getProgress()I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    :goto_93
    invoke-static {v2, v1}, Lcom/delan/app/germanybluetooth/adapter/WeekTimeAdapter;->access$1000(Lcom/delan/app/germanybluetooth/adapter/WeekTimeAdapter;I)I

    move-result v1

    iput v1, v0, Lcom/delan/app/germanybluetooth/bean/chars/CometSwitchPoint;->endTime3:I

    .line 300
    iget-object v1, p0, Lcom/delan/app/germanybluetooth/adapter/WeekTimeAdapter$ViewHolder$6$1;->this$2:Lcom/delan/app/germanybluetooth/adapter/WeekTimeAdapter$ViewHolder$6;

    iget-object v1, v1, Lcom/delan/app/germanybluetooth/adapter/WeekTimeAdapter$ViewHolder$6;->this$1:Lcom/delan/app/germanybluetooth/adapter/WeekTimeAdapter$ViewHolder;

    iget-object v1, v1, Lcom/delan/app/germanybluetooth/adapter/WeekTimeAdapter$ViewHolder;->this$0:Lcom/delan/app/germanybluetooth/adapter/WeekTimeAdapter;

    iget v2, v0, Lcom/delan/app/germanybluetooth/bean/chars/CometSwitchPoint;->endTime3:I

    iget-object v3, p0, Lcom/delan/app/germanybluetooth/adapter/WeekTimeAdapter$ViewHolder$6$1;->this$2:Lcom/delan/app/germanybluetooth/adapter/WeekTimeAdapter$ViewHolder$6;

    iget-object v3, v3, Lcom/delan/app/germanybluetooth/adapter/WeekTimeAdapter$ViewHolder$6;->this$1:Lcom/delan/app/germanybluetooth/adapter/WeekTimeAdapter$ViewHolder;

    iget-object v3, v3, Lcom/delan/app/germanybluetooth/adapter/WeekTimeAdapter$ViewHolder;->seekEnd3:Landroid/widget/SeekBar;

    iget-object v4, p0, Lcom/delan/app/germanybluetooth/adapter/WeekTimeAdapter$ViewHolder$6$1;->this$2:Lcom/delan/app/germanybluetooth/adapter/WeekTimeAdapter$ViewHolder$6;

    iget-object v4, v4, Lcom/delan/app/germanybluetooth/adapter/WeekTimeAdapter$ViewHolder$6;->this$1:Lcom/delan/app/germanybluetooth/adapter/WeekTimeAdapter$ViewHolder;

    invoke-static {v4}, Lcom/delan/app/germanybluetooth/adapter/WeekTimeAdapter$ViewHolder;->access$800(Lcom/delan/app/germanybluetooth/adapter/WeekTimeAdapter$ViewHolder;)Landroid/widget/TextView;

    move-result-object v4

    invoke-static {v1, v2, v3, v4}, Lcom/delan/app/germanybluetooth/adapter/WeekTimeAdapter;->access$1100(Lcom/delan/app/germanybluetooth/adapter/WeekTimeAdapter;ILandroid/widget/SeekBar;Landroid/widget/TextView;)V

    .line 302
    :cond_b2
    iget-object v1, p0, Lcom/delan/app/germanybluetooth/adapter/WeekTimeAdapter$ViewHolder$6$1;->this$2:Lcom/delan/app/germanybluetooth/adapter/WeekTimeAdapter$ViewHolder$6;

    iget-object v1, v1, Lcom/delan/app/germanybluetooth/adapter/WeekTimeAdapter$ViewHolder$6;->this$1:Lcom/delan/app/germanybluetooth/adapter/WeekTimeAdapter$ViewHolder;

    iget-object v1, v1, Lcom/delan/app/germanybluetooth/adapter/WeekTimeAdapter$ViewHolder;->this$0:Lcom/delan/app/germanybluetooth/adapter/WeekTimeAdapter;

    invoke-static {v1}, Lcom/delan/app/germanybluetooth/adapter/WeekTimeAdapter;->access$1200(Lcom/delan/app/germanybluetooth/adapter/WeekTimeAdapter;)Lcom/delan/app/germanybluetooth/adapter/WeekTimeAdapter$OnSwitchPointChangeListener;

    move-result-object v1

    iget-object v2, p0, Lcom/delan/app/germanybluetooth/adapter/WeekTimeAdapter$ViewHolder$6$1;->this$2:Lcom/delan/app/germanybluetooth/adapter/WeekTimeAdapter$ViewHolder$6;

    iget-object v2, v2, Lcom/delan/app/germanybluetooth/adapter/WeekTimeAdapter$ViewHolder$6;->this$1:Lcom/delan/app/germanybluetooth/adapter/WeekTimeAdapter$ViewHolder;

    iget v2, v2, Lcom/delan/app/germanybluetooth/adapter/WeekTimeAdapter$ViewHolder;->position:I

    invoke-interface {v1, v2}, Lcom/delan/app/germanybluetooth/adapter/WeekTimeAdapter$OnSwitchPointChangeListener;->onSwitchPointChanged(I)V

    .line 305
    :cond_c5
    return-void

    .line 299
    :cond_c6
    iget-object v1, p0, Lcom/delan/app/germanybluetooth/adapter/WeekTimeAdapter$ViewHolder$6$1;->this$2:Lcom/delan/app/germanybluetooth/adapter/WeekTimeAdapter$ViewHolder$6;

    iget-object v1, v1, Lcom/delan/app/germanybluetooth/adapter/WeekTimeAdapter$ViewHolder$6;->this$1:Lcom/delan/app/germanybluetooth/adapter/WeekTimeAdapter$ViewHolder;

    iget-object v1, v1, Lcom/delan/app/germanybluetooth/adapter/WeekTimeAdapter$ViewHolder;->seekStart3:Landroid/widget/SeekBar;

    invoke-virtual {v1}, Landroid/widget/SeekBar;->getMax()I

    move-result v1

    goto :goto_93
.end method

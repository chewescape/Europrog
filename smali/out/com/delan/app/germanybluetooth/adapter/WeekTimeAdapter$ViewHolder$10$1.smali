.class Lcom/delan/app/germanybluetooth/adapter/WeekTimeAdapter$ViewHolder$10$1;
.super Ljava/lang/Object;
.source "WeekTimeAdapter.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/delan/app/germanybluetooth/adapter/WeekTimeAdapter$ViewHolder$10;->onLongUpdate()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$2:Lcom/delan/app/germanybluetooth/adapter/WeekTimeAdapter$ViewHolder$10;


# direct methods
.method constructor <init>(Lcom/delan/app/germanybluetooth/adapter/WeekTimeAdapter$ViewHolder$10;)V
    .registers 2
    .param p1, "this$2"    # Lcom/delan/app/germanybluetooth/adapter/WeekTimeAdapter$ViewHolder$10;

    .prologue
    .line 366
    iput-object p1, p0, Lcom/delan/app/germanybluetooth/adapter/WeekTimeAdapter$ViewHolder$10$1;->this$2:Lcom/delan/app/germanybluetooth/adapter/WeekTimeAdapter$ViewHolder$10;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 5

    .prologue
    .line 369
    iget-object v0, p0, Lcom/delan/app/germanybluetooth/adapter/WeekTimeAdapter$ViewHolder$10$1;->this$2:Lcom/delan/app/germanybluetooth/adapter/WeekTimeAdapter$ViewHolder$10;

    iget-object v0, v0, Lcom/delan/app/germanybluetooth/adapter/WeekTimeAdapter$ViewHolder$10;->this$1:Lcom/delan/app/germanybluetooth/adapter/WeekTimeAdapter$ViewHolder;

    iget-object v0, v0, Lcom/delan/app/germanybluetooth/adapter/WeekTimeAdapter$ViewHolder;->seekEnd1:Landroid/widget/SeekBar;

    invoke-virtual {v0}, Landroid/widget/SeekBar;->getProgress()I

    move-result v0

    iget-object v1, p0, Lcom/delan/app/germanybluetooth/adapter/WeekTimeAdapter$ViewHolder$10$1;->this$2:Lcom/delan/app/germanybluetooth/adapter/WeekTimeAdapter$ViewHolder$10;

    iget-object v1, v1, Lcom/delan/app/germanybluetooth/adapter/WeekTimeAdapter$ViewHolder$10;->this$1:Lcom/delan/app/germanybluetooth/adapter/WeekTimeAdapter$ViewHolder;

    iget-object v1, v1, Lcom/delan/app/germanybluetooth/adapter/WeekTimeAdapter$ViewHolder;->seekEnd1:Landroid/widget/SeekBar;

    invoke-virtual {v1}, Landroid/widget/SeekBar;->getMax()I

    move-result v1

    if-ge v0, v1, :cond_68

    .line 370
    iget-object v0, p0, Lcom/delan/app/germanybluetooth/adapter/WeekTimeAdapter$ViewHolder$10$1;->this$2:Lcom/delan/app/germanybluetooth/adapter/WeekTimeAdapter$ViewHolder$10;

    iget-object v0, v0, Lcom/delan/app/germanybluetooth/adapter/WeekTimeAdapter$ViewHolder$10;->this$1:Lcom/delan/app/germanybluetooth/adapter/WeekTimeAdapter$ViewHolder;

    iget-object v0, v0, Lcom/delan/app/germanybluetooth/adapter/WeekTimeAdapter$ViewHolder;->this$0:Lcom/delan/app/germanybluetooth/adapter/WeekTimeAdapter;

    iget-object v1, p0, Lcom/delan/app/germanybluetooth/adapter/WeekTimeAdapter$ViewHolder$10$1;->this$2:Lcom/delan/app/germanybluetooth/adapter/WeekTimeAdapter$ViewHolder$10;

    iget-object v1, v1, Lcom/delan/app/germanybluetooth/adapter/WeekTimeAdapter$ViewHolder$10;->this$1:Lcom/delan/app/germanybluetooth/adapter/WeekTimeAdapter$ViewHolder;

    iget-object v1, v1, Lcom/delan/app/germanybluetooth/adapter/WeekTimeAdapter$ViewHolder;->this$0:Lcom/delan/app/germanybluetooth/adapter/WeekTimeAdapter;

    iget-object v2, p0, Lcom/delan/app/germanybluetooth/adapter/WeekTimeAdapter$ViewHolder$10$1;->this$2:Lcom/delan/app/germanybluetooth/adapter/WeekTimeAdapter$ViewHolder$10;

    iget-object v2, v2, Lcom/delan/app/germanybluetooth/adapter/WeekTimeAdapter$ViewHolder$10;->this$1:Lcom/delan/app/germanybluetooth/adapter/WeekTimeAdapter$ViewHolder;

    iget v2, v2, Lcom/delan/app/germanybluetooth/adapter/WeekTimeAdapter$ViewHolder;->position:I

    invoke-virtual {v1, v2}, Lcom/delan/app/germanybluetooth/adapter/WeekTimeAdapter;->getItem(I)Lcom/delan/app/germanybluetooth/bean/chars/CometSwitchPoint;

    move-result-object v1

    iget-object v2, p0, Lcom/delan/app/germanybluetooth/adapter/WeekTimeAdapter$ViewHolder$10$1;->this$2:Lcom/delan/app/germanybluetooth/adapter/WeekTimeAdapter$ViewHolder$10;

    iget-object v2, v2, Lcom/delan/app/germanybluetooth/adapter/WeekTimeAdapter$ViewHolder$10;->this$1:Lcom/delan/app/germanybluetooth/adapter/WeekTimeAdapter$ViewHolder;

    iget-object v2, v2, Lcom/delan/app/germanybluetooth/adapter/WeekTimeAdapter$ViewHolder;->this$0:Lcom/delan/app/germanybluetooth/adapter/WeekTimeAdapter;

    iget-object v3, p0, Lcom/delan/app/germanybluetooth/adapter/WeekTimeAdapter$ViewHolder$10$1;->this$2:Lcom/delan/app/germanybluetooth/adapter/WeekTimeAdapter$ViewHolder$10;

    iget-object v3, v3, Lcom/delan/app/germanybluetooth/adapter/WeekTimeAdapter$ViewHolder$10;->this$1:Lcom/delan/app/germanybluetooth/adapter/WeekTimeAdapter$ViewHolder;

    iget-object v3, v3, Lcom/delan/app/germanybluetooth/adapter/WeekTimeAdapter$ViewHolder;->seekEnd1:Landroid/widget/SeekBar;

    invoke-virtual {v3}, Landroid/widget/SeekBar;->getProgress()I

    move-result v3

    add-int/lit8 v3, v3, 0x1

    invoke-static {v2, v3}, Lcom/delan/app/germanybluetooth/adapter/WeekTimeAdapter;->access$1000(Lcom/delan/app/germanybluetooth/adapter/WeekTimeAdapter;I)I

    move-result v2

    iput v2, v1, Lcom/delan/app/germanybluetooth/bean/chars/CometSwitchPoint;->endTime1:I

    iget-object v1, p0, Lcom/delan/app/germanybluetooth/adapter/WeekTimeAdapter$ViewHolder$10$1;->this$2:Lcom/delan/app/germanybluetooth/adapter/WeekTimeAdapter$ViewHolder$10;

    iget-object v1, v1, Lcom/delan/app/germanybluetooth/adapter/WeekTimeAdapter$ViewHolder$10;->this$1:Lcom/delan/app/germanybluetooth/adapter/WeekTimeAdapter$ViewHolder;

    iget-object v1, v1, Lcom/delan/app/germanybluetooth/adapter/WeekTimeAdapter$ViewHolder;->seekEnd1:Landroid/widget/SeekBar;

    iget-object v3, p0, Lcom/delan/app/germanybluetooth/adapter/WeekTimeAdapter$ViewHolder$10$1;->this$2:Lcom/delan/app/germanybluetooth/adapter/WeekTimeAdapter$ViewHolder$10;

    iget-object v3, v3, Lcom/delan/app/germanybluetooth/adapter/WeekTimeAdapter$ViewHolder$10;->this$1:Lcom/delan/app/germanybluetooth/adapter/WeekTimeAdapter$ViewHolder;

    invoke-static {v3}, Lcom/delan/app/germanybluetooth/adapter/WeekTimeAdapter$ViewHolder;->access$200(Lcom/delan/app/germanybluetooth/adapter/WeekTimeAdapter$ViewHolder;)Landroid/widget/TextView;

    move-result-object v3

    invoke-static {v0, v2, v1, v3}, Lcom/delan/app/germanybluetooth/adapter/WeekTimeAdapter;->access$1100(Lcom/delan/app/germanybluetooth/adapter/WeekTimeAdapter;ILandroid/widget/SeekBar;Landroid/widget/TextView;)V

    .line 371
    iget-object v0, p0, Lcom/delan/app/germanybluetooth/adapter/WeekTimeAdapter$ViewHolder$10$1;->this$2:Lcom/delan/app/germanybluetooth/adapter/WeekTimeAdapter$ViewHolder$10;

    iget-object v0, v0, Lcom/delan/app/germanybluetooth/adapter/WeekTimeAdapter$ViewHolder$10;->this$1:Lcom/delan/app/germanybluetooth/adapter/WeekTimeAdapter$ViewHolder;

    iget-object v0, v0, Lcom/delan/app/germanybluetooth/adapter/WeekTimeAdapter$ViewHolder;->this$0:Lcom/delan/app/germanybluetooth/adapter/WeekTimeAdapter;

    invoke-static {v0}, Lcom/delan/app/germanybluetooth/adapter/WeekTimeAdapter;->access$1200(Lcom/delan/app/germanybluetooth/adapter/WeekTimeAdapter;)Lcom/delan/app/germanybluetooth/adapter/WeekTimeAdapter$OnSwitchPointChangeListener;

    move-result-object v0

    iget-object v1, p0, Lcom/delan/app/germanybluetooth/adapter/WeekTimeAdapter$ViewHolder$10$1;->this$2:Lcom/delan/app/germanybluetooth/adapter/WeekTimeAdapter$ViewHolder$10;

    iget-object v1, v1, Lcom/delan/app/germanybluetooth/adapter/WeekTimeAdapter$ViewHolder$10;->this$1:Lcom/delan/app/germanybluetooth/adapter/WeekTimeAdapter$ViewHolder;

    iget v1, v1, Lcom/delan/app/germanybluetooth/adapter/WeekTimeAdapter$ViewHolder;->position:I

    invoke-interface {v0, v1}, Lcom/delan/app/germanybluetooth/adapter/WeekTimeAdapter$OnSwitchPointChangeListener;->onSwitchPointChanged(I)V

    .line 373
    :cond_68
    return-void
.end method

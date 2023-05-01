.class Lcom/delan/app/germanybluetooth/adapter/ProgmaticSwitchPointAdapter$ViewHolder$11$1;
.super Ljava/lang/Object;
.source "ProgmaticSwitchPointAdapter.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/delan/app/germanybluetooth/adapter/ProgmaticSwitchPointAdapter$ViewHolder$11;->onLongUpdate()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$2:Lcom/delan/app/germanybluetooth/adapter/ProgmaticSwitchPointAdapter$ViewHolder$11;


# direct methods
.method constructor <init>(Lcom/delan/app/germanybluetooth/adapter/ProgmaticSwitchPointAdapter$ViewHolder$11;)V
    .registers 2
    .param p1, "this$2"    # Lcom/delan/app/germanybluetooth/adapter/ProgmaticSwitchPointAdapter$ViewHolder$11;

    .prologue
    .line 441
    iput-object p1, p0, Lcom/delan/app/germanybluetooth/adapter/ProgmaticSwitchPointAdapter$ViewHolder$11$1;->this$2:Lcom/delan/app/germanybluetooth/adapter/ProgmaticSwitchPointAdapter$ViewHolder$11;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 8

    .prologue
    .line 444
    iget-object v2, p0, Lcom/delan/app/germanybluetooth/adapter/ProgmaticSwitchPointAdapter$ViewHolder$11$1;->this$2:Lcom/delan/app/germanybluetooth/adapter/ProgmaticSwitchPointAdapter$ViewHolder$11;

    iget-object v2, v2, Lcom/delan/app/germanybluetooth/adapter/ProgmaticSwitchPointAdapter$ViewHolder$11;->this$1:Lcom/delan/app/germanybluetooth/adapter/ProgmaticSwitchPointAdapter$ViewHolder;

    invoke-static {v2}, Lcom/delan/app/germanybluetooth/adapter/ProgmaticSwitchPointAdapter$ViewHolder;->access$1000(Lcom/delan/app/germanybluetooth/adapter/ProgmaticSwitchPointAdapter$ViewHolder;)Landroid/widget/SeekBar;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/SeekBar;->getProgress()I

    move-result v2

    iget-object v3, p0, Lcom/delan/app/germanybluetooth/adapter/ProgmaticSwitchPointAdapter$ViewHolder$11$1;->this$2:Lcom/delan/app/germanybluetooth/adapter/ProgmaticSwitchPointAdapter$ViewHolder$11;

    iget-object v3, v3, Lcom/delan/app/germanybluetooth/adapter/ProgmaticSwitchPointAdapter$ViewHolder$11;->this$1:Lcom/delan/app/germanybluetooth/adapter/ProgmaticSwitchPointAdapter$ViewHolder;

    invoke-static {v3}, Lcom/delan/app/germanybluetooth/adapter/ProgmaticSwitchPointAdapter$ViewHolder;->access$1000(Lcom/delan/app/germanybluetooth/adapter/ProgmaticSwitchPointAdapter$ViewHolder;)Landroid/widget/SeekBar;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/SeekBar;->getMax()I

    move-result v3

    if-ge v2, v3, :cond_d3

    .line 445
    iget-object v2, p0, Lcom/delan/app/germanybluetooth/adapter/ProgmaticSwitchPointAdapter$ViewHolder$11$1;->this$2:Lcom/delan/app/germanybluetooth/adapter/ProgmaticSwitchPointAdapter$ViewHolder$11;

    iget-object v2, v2, Lcom/delan/app/germanybluetooth/adapter/ProgmaticSwitchPointAdapter$ViewHolder$11;->this$1:Lcom/delan/app/germanybluetooth/adapter/ProgmaticSwitchPointAdapter$ViewHolder;

    invoke-static {v2}, Lcom/delan/app/germanybluetooth/adapter/ProgmaticSwitchPointAdapter$ViewHolder;->access$1000(Lcom/delan/app/germanybluetooth/adapter/ProgmaticSwitchPointAdapter$ViewHolder;)Landroid/widget/SeekBar;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/SeekBar;->getProgress()I

    move-result v2

    add-int/lit8 v1, v2, 0x1

    .line 446
    .local v1, "progress":I
    iget-object v2, p0, Lcom/delan/app/germanybluetooth/adapter/ProgmaticSwitchPointAdapter$ViewHolder$11$1;->this$2:Lcom/delan/app/germanybluetooth/adapter/ProgmaticSwitchPointAdapter$ViewHolder$11;

    iget-object v2, v2, Lcom/delan/app/germanybluetooth/adapter/ProgmaticSwitchPointAdapter$ViewHolder$11;->this$1:Lcom/delan/app/germanybluetooth/adapter/ProgmaticSwitchPointAdapter$ViewHolder;

    iget-object v2, v2, Lcom/delan/app/germanybluetooth/adapter/ProgmaticSwitchPointAdapter$ViewHolder;->this$0:Lcom/delan/app/germanybluetooth/adapter/ProgmaticSwitchPointAdapter;

    iget-object v3, p0, Lcom/delan/app/germanybluetooth/adapter/ProgmaticSwitchPointAdapter$ViewHolder$11$1;->this$2:Lcom/delan/app/germanybluetooth/adapter/ProgmaticSwitchPointAdapter$ViewHolder$11;

    iget-object v3, v3, Lcom/delan/app/germanybluetooth/adapter/ProgmaticSwitchPointAdapter$ViewHolder$11;->this$1:Lcom/delan/app/germanybluetooth/adapter/ProgmaticSwitchPointAdapter$ViewHolder;

    iget v3, v3, Lcom/delan/app/germanybluetooth/adapter/ProgmaticSwitchPointAdapter$ViewHolder;->position:I

    invoke-virtual {v2, v3}, Lcom/delan/app/germanybluetooth/adapter/ProgmaticSwitchPointAdapter;->getItem(I)Lcom/delan/app/germanybluetooth/bean/chars/ProgtimeProgmaticSwitchPoint;

    move-result-object v0

    .line 447
    .local v0, "point":Lcom/delan/app/germanybluetooth/bean/chars/ProgtimeProgmaticSwitchPoint;
    iget-object v2, p0, Lcom/delan/app/germanybluetooth/adapter/ProgmaticSwitchPointAdapter$ViewHolder$11$1;->this$2:Lcom/delan/app/germanybluetooth/adapter/ProgmaticSwitchPointAdapter$ViewHolder$11;

    iget-object v2, v2, Lcom/delan/app/germanybluetooth/adapter/ProgmaticSwitchPointAdapter$ViewHolder$11;->this$1:Lcom/delan/app/germanybluetooth/adapter/ProgmaticSwitchPointAdapter$ViewHolder;

    iget-object v2, v2, Lcom/delan/app/germanybluetooth/adapter/ProgmaticSwitchPointAdapter$ViewHolder;->this$0:Lcom/delan/app/germanybluetooth/adapter/ProgmaticSwitchPointAdapter;

    invoke-static {v2, v1}, Lcom/delan/app/germanybluetooth/adapter/ProgmaticSwitchPointAdapter;->access$1800(Lcom/delan/app/germanybluetooth/adapter/ProgmaticSwitchPointAdapter;I)I

    move-result v2

    iput v2, v0, Lcom/delan/app/germanybluetooth/bean/chars/ProgtimeProgmaticSwitchPoint;->h5:I

    .line 448
    iget-object v2, p0, Lcom/delan/app/germanybluetooth/adapter/ProgmaticSwitchPointAdapter$ViewHolder$11$1;->this$2:Lcom/delan/app/germanybluetooth/adapter/ProgmaticSwitchPointAdapter$ViewHolder$11;

    iget-object v2, v2, Lcom/delan/app/germanybluetooth/adapter/ProgmaticSwitchPointAdapter$ViewHolder$11;->this$1:Lcom/delan/app/germanybluetooth/adapter/ProgmaticSwitchPointAdapter$ViewHolder;

    iget-object v2, v2, Lcom/delan/app/germanybluetooth/adapter/ProgmaticSwitchPointAdapter$ViewHolder;->this$0:Lcom/delan/app/germanybluetooth/adapter/ProgmaticSwitchPointAdapter;

    invoke-static {v2, v1}, Lcom/delan/app/germanybluetooth/adapter/ProgmaticSwitchPointAdapter;->access$1900(Lcom/delan/app/germanybluetooth/adapter/ProgmaticSwitchPointAdapter;I)I

    move-result v2

    iput v2, v0, Lcom/delan/app/germanybluetooth/bean/chars/ProgtimeProgmaticSwitchPoint;->m5:I

    .line 449
    iget-object v2, p0, Lcom/delan/app/germanybluetooth/adapter/ProgmaticSwitchPointAdapter$ViewHolder$11$1;->this$2:Lcom/delan/app/germanybluetooth/adapter/ProgmaticSwitchPointAdapter$ViewHolder$11;

    iget-object v2, v2, Lcom/delan/app/germanybluetooth/adapter/ProgmaticSwitchPointAdapter$ViewHolder$11;->this$1:Lcom/delan/app/germanybluetooth/adapter/ProgmaticSwitchPointAdapter$ViewHolder;

    iget-object v2, v2, Lcom/delan/app/germanybluetooth/adapter/ProgmaticSwitchPointAdapter$ViewHolder;->this$0:Lcom/delan/app/germanybluetooth/adapter/ProgmaticSwitchPointAdapter;

    iget v3, v0, Lcom/delan/app/germanybluetooth/bean/chars/ProgtimeProgmaticSwitchPoint;->h5:I

    iget v4, v0, Lcom/delan/app/germanybluetooth/bean/chars/ProgtimeProgmaticSwitchPoint;->m5:I

    iget-object v5, p0, Lcom/delan/app/germanybluetooth/adapter/ProgmaticSwitchPointAdapter$ViewHolder$11$1;->this$2:Lcom/delan/app/germanybluetooth/adapter/ProgmaticSwitchPointAdapter$ViewHolder$11;

    iget-object v5, v5, Lcom/delan/app/germanybluetooth/adapter/ProgmaticSwitchPointAdapter$ViewHolder$11;->this$1:Lcom/delan/app/germanybluetooth/adapter/ProgmaticSwitchPointAdapter$ViewHolder;

    invoke-static {v5}, Lcom/delan/app/germanybluetooth/adapter/ProgmaticSwitchPointAdapter$ViewHolder;->access$1000(Lcom/delan/app/germanybluetooth/adapter/ProgmaticSwitchPointAdapter$ViewHolder;)Landroid/widget/SeekBar;

    move-result-object v5

    iget-object v6, p0, Lcom/delan/app/germanybluetooth/adapter/ProgmaticSwitchPointAdapter$ViewHolder$11$1;->this$2:Lcom/delan/app/germanybluetooth/adapter/ProgmaticSwitchPointAdapter$ViewHolder$11;

    iget-object v6, v6, Lcom/delan/app/germanybluetooth/adapter/ProgmaticSwitchPointAdapter$ViewHolder$11;->this$1:Lcom/delan/app/germanybluetooth/adapter/ProgmaticSwitchPointAdapter$ViewHolder;

    invoke-static {v6}, Lcom/delan/app/germanybluetooth/adapter/ProgmaticSwitchPointAdapter$ViewHolder;->access$1100(Lcom/delan/app/germanybluetooth/adapter/ProgmaticSwitchPointAdapter$ViewHolder;)Landroid/widget/TextView;

    move-result-object v6

    invoke-static {v2, v3, v4, v5, v6}, Lcom/delan/app/germanybluetooth/adapter/ProgmaticSwitchPointAdapter;->access$2000(Lcom/delan/app/germanybluetooth/adapter/ProgmaticSwitchPointAdapter;IILandroid/widget/SeekBar;Landroid/widget/TextView;)V

    .line 451
    iget-object v2, p0, Lcom/delan/app/germanybluetooth/adapter/ProgmaticSwitchPointAdapter$ViewHolder$11$1;->this$2:Lcom/delan/app/germanybluetooth/adapter/ProgmaticSwitchPointAdapter$ViewHolder$11;

    iget-object v2, v2, Lcom/delan/app/germanybluetooth/adapter/ProgmaticSwitchPointAdapter$ViewHolder$11;->this$1:Lcom/delan/app/germanybluetooth/adapter/ProgmaticSwitchPointAdapter$ViewHolder;

    invoke-static {v2}, Lcom/delan/app/germanybluetooth/adapter/ProgmaticSwitchPointAdapter$ViewHolder;->access$1200(Lcom/delan/app/germanybluetooth/adapter/ProgmaticSwitchPointAdapter$ViewHolder;)Landroid/widget/SeekBar;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/SeekBar;->getProgress()I

    move-result v2

    if-le v1, v2, :cond_c0

    .line 452
    iget-object v2, p0, Lcom/delan/app/germanybluetooth/adapter/ProgmaticSwitchPointAdapter$ViewHolder$11$1;->this$2:Lcom/delan/app/germanybluetooth/adapter/ProgmaticSwitchPointAdapter$ViewHolder$11;

    iget-object v2, v2, Lcom/delan/app/germanybluetooth/adapter/ProgmaticSwitchPointAdapter$ViewHolder$11;->this$1:Lcom/delan/app/germanybluetooth/adapter/ProgmaticSwitchPointAdapter$ViewHolder;

    invoke-static {v2}, Lcom/delan/app/germanybluetooth/adapter/ProgmaticSwitchPointAdapter$ViewHolder;->access$1200(Lcom/delan/app/germanybluetooth/adapter/ProgmaticSwitchPointAdapter$ViewHolder;)Landroid/widget/SeekBar;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/SeekBar;->getMax()I

    move-result v2

    if-ge v1, v2, :cond_8b

    .line 453
    add-int/lit8 v1, v1, 0x1

    .line 454
    :cond_8b
    iget-object v2, p0, Lcom/delan/app/germanybluetooth/adapter/ProgmaticSwitchPointAdapter$ViewHolder$11$1;->this$2:Lcom/delan/app/germanybluetooth/adapter/ProgmaticSwitchPointAdapter$ViewHolder$11;

    iget-object v2, v2, Lcom/delan/app/germanybluetooth/adapter/ProgmaticSwitchPointAdapter$ViewHolder$11;->this$1:Lcom/delan/app/germanybluetooth/adapter/ProgmaticSwitchPointAdapter$ViewHolder;

    iget-object v2, v2, Lcom/delan/app/germanybluetooth/adapter/ProgmaticSwitchPointAdapter$ViewHolder;->this$0:Lcom/delan/app/germanybluetooth/adapter/ProgmaticSwitchPointAdapter;

    invoke-static {v2, v1}, Lcom/delan/app/germanybluetooth/adapter/ProgmaticSwitchPointAdapter;->access$1800(Lcom/delan/app/germanybluetooth/adapter/ProgmaticSwitchPointAdapter;I)I

    move-result v2

    iput v2, v0, Lcom/delan/app/germanybluetooth/bean/chars/ProgtimeProgmaticSwitchPoint;->h6:I

    .line 455
    iget-object v2, p0, Lcom/delan/app/germanybluetooth/adapter/ProgmaticSwitchPointAdapter$ViewHolder$11$1;->this$2:Lcom/delan/app/germanybluetooth/adapter/ProgmaticSwitchPointAdapter$ViewHolder$11;

    iget-object v2, v2, Lcom/delan/app/germanybluetooth/adapter/ProgmaticSwitchPointAdapter$ViewHolder$11;->this$1:Lcom/delan/app/germanybluetooth/adapter/ProgmaticSwitchPointAdapter$ViewHolder;

    iget-object v2, v2, Lcom/delan/app/germanybluetooth/adapter/ProgmaticSwitchPointAdapter$ViewHolder;->this$0:Lcom/delan/app/germanybluetooth/adapter/ProgmaticSwitchPointAdapter;

    invoke-static {v2, v1}, Lcom/delan/app/germanybluetooth/adapter/ProgmaticSwitchPointAdapter;->access$1900(Lcom/delan/app/germanybluetooth/adapter/ProgmaticSwitchPointAdapter;I)I

    move-result v2

    iput v2, v0, Lcom/delan/app/germanybluetooth/bean/chars/ProgtimeProgmaticSwitchPoint;->m6:I

    .line 456
    iget-object v2, p0, Lcom/delan/app/germanybluetooth/adapter/ProgmaticSwitchPointAdapter$ViewHolder$11$1;->this$2:Lcom/delan/app/germanybluetooth/adapter/ProgmaticSwitchPointAdapter$ViewHolder$11;

    iget-object v2, v2, Lcom/delan/app/germanybluetooth/adapter/ProgmaticSwitchPointAdapter$ViewHolder$11;->this$1:Lcom/delan/app/germanybluetooth/adapter/ProgmaticSwitchPointAdapter$ViewHolder;

    iget-object v2, v2, Lcom/delan/app/germanybluetooth/adapter/ProgmaticSwitchPointAdapter$ViewHolder;->this$0:Lcom/delan/app/germanybluetooth/adapter/ProgmaticSwitchPointAdapter;

    iget v3, v0, Lcom/delan/app/germanybluetooth/bean/chars/ProgtimeProgmaticSwitchPoint;->h6:I

    iget v4, v0, Lcom/delan/app/germanybluetooth/bean/chars/ProgtimeProgmaticSwitchPoint;->m6:I

    iget-object v5, p0, Lcom/delan/app/germanybluetooth/adapter/ProgmaticSwitchPointAdapter$ViewHolder$11$1;->this$2:Lcom/delan/app/germanybluetooth/adapter/ProgmaticSwitchPointAdapter$ViewHolder$11;

    iget-object v5, v5, Lcom/delan/app/germanybluetooth/adapter/ProgmaticSwitchPointAdapter$ViewHolder$11;->this$1:Lcom/delan/app/germanybluetooth/adapter/ProgmaticSwitchPointAdapter$ViewHolder;

    invoke-static {v5}, Lcom/delan/app/germanybluetooth/adapter/ProgmaticSwitchPointAdapter$ViewHolder;->access$1200(Lcom/delan/app/germanybluetooth/adapter/ProgmaticSwitchPointAdapter$ViewHolder;)Landroid/widget/SeekBar;

    move-result-object v5

    iget-object v6, p0, Lcom/delan/app/germanybluetooth/adapter/ProgmaticSwitchPointAdapter$ViewHolder$11$1;->this$2:Lcom/delan/app/germanybluetooth/adapter/ProgmaticSwitchPointAdapter$ViewHolder$11;

    iget-object v6, v6, Lcom/delan/app/germanybluetooth/adapter/ProgmaticSwitchPointAdapter$ViewHolder$11;->this$1:Lcom/delan/app/germanybluetooth/adapter/ProgmaticSwitchPointAdapter$ViewHolder;

    invoke-static {v6}, Lcom/delan/app/germanybluetooth/adapter/ProgmaticSwitchPointAdapter$ViewHolder;->access$1300(Lcom/delan/app/germanybluetooth/adapter/ProgmaticSwitchPointAdapter$ViewHolder;)Landroid/widget/TextView;

    move-result-object v6

    invoke-static {v2, v3, v4, v5, v6}, Lcom/delan/app/germanybluetooth/adapter/ProgmaticSwitchPointAdapter;->access$2000(Lcom/delan/app/germanybluetooth/adapter/ProgmaticSwitchPointAdapter;IILandroid/widget/SeekBar;Landroid/widget/TextView;)V

    .line 458
    :cond_c0
    iget-object v2, p0, Lcom/delan/app/germanybluetooth/adapter/ProgmaticSwitchPointAdapter$ViewHolder$11$1;->this$2:Lcom/delan/app/germanybluetooth/adapter/ProgmaticSwitchPointAdapter$ViewHolder$11;

    iget-object v2, v2, Lcom/delan/app/germanybluetooth/adapter/ProgmaticSwitchPointAdapter$ViewHolder$11;->this$1:Lcom/delan/app/germanybluetooth/adapter/ProgmaticSwitchPointAdapter$ViewHolder;

    iget-object v2, v2, Lcom/delan/app/germanybluetooth/adapter/ProgmaticSwitchPointAdapter$ViewHolder;->this$0:Lcom/delan/app/germanybluetooth/adapter/ProgmaticSwitchPointAdapter;

    invoke-static {v2}, Lcom/delan/app/germanybluetooth/adapter/ProgmaticSwitchPointAdapter;->access$2100(Lcom/delan/app/germanybluetooth/adapter/ProgmaticSwitchPointAdapter;)Lcom/delan/app/germanybluetooth/adapter/ProgmaticSwitchPointAdapter$OnSwitchPointChangeListener;

    move-result-object v2

    iget-object v3, p0, Lcom/delan/app/germanybluetooth/adapter/ProgmaticSwitchPointAdapter$ViewHolder$11$1;->this$2:Lcom/delan/app/germanybluetooth/adapter/ProgmaticSwitchPointAdapter$ViewHolder$11;

    iget-object v3, v3, Lcom/delan/app/germanybluetooth/adapter/ProgmaticSwitchPointAdapter$ViewHolder$11;->this$1:Lcom/delan/app/germanybluetooth/adapter/ProgmaticSwitchPointAdapter$ViewHolder;

    iget v3, v3, Lcom/delan/app/germanybluetooth/adapter/ProgmaticSwitchPointAdapter$ViewHolder;->position:I

    invoke-interface {v2, v3}, Lcom/delan/app/germanybluetooth/adapter/ProgmaticSwitchPointAdapter$OnSwitchPointChangeListener;->onSwitchPointChanged(I)V

    .line 460
    .end local v0    # "point":Lcom/delan/app/germanybluetooth/bean/chars/ProgtimeProgmaticSwitchPoint;
    .end local v1    # "progress":I
    :cond_d3
    return-void
.end method

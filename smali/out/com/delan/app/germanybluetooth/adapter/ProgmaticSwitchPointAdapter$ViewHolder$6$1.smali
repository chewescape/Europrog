.class Lcom/delan/app/germanybluetooth/adapter/ProgmaticSwitchPointAdapter$ViewHolder$6$1;
.super Ljava/lang/Object;
.source "ProgmaticSwitchPointAdapter.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/delan/app/germanybluetooth/adapter/ProgmaticSwitchPointAdapter$ViewHolder$6;->onLongUpdate()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$2:Lcom/delan/app/germanybluetooth/adapter/ProgmaticSwitchPointAdapter$ViewHolder$6;


# direct methods
.method constructor <init>(Lcom/delan/app/germanybluetooth/adapter/ProgmaticSwitchPointAdapter$ViewHolder$6;)V
    .registers 2
    .param p1, "this$2"    # Lcom/delan/app/germanybluetooth/adapter/ProgmaticSwitchPointAdapter$ViewHolder$6;

    .prologue
    .line 325
    iput-object p1, p0, Lcom/delan/app/germanybluetooth/adapter/ProgmaticSwitchPointAdapter$ViewHolder$6$1;->this$2:Lcom/delan/app/germanybluetooth/adapter/ProgmaticSwitchPointAdapter$ViewHolder$6;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 8

    .prologue
    .line 328
    iget-object v2, p0, Lcom/delan/app/germanybluetooth/adapter/ProgmaticSwitchPointAdapter$ViewHolder$6$1;->this$2:Lcom/delan/app/germanybluetooth/adapter/ProgmaticSwitchPointAdapter$ViewHolder$6;

    iget-object v2, v2, Lcom/delan/app/germanybluetooth/adapter/ProgmaticSwitchPointAdapter$ViewHolder$6;->this$1:Lcom/delan/app/germanybluetooth/adapter/ProgmaticSwitchPointAdapter$ViewHolder;

    invoke-static {v2}, Lcom/delan/app/germanybluetooth/adapter/ProgmaticSwitchPointAdapter$ViewHolder;->access$700(Lcom/delan/app/germanybluetooth/adapter/ProgmaticSwitchPointAdapter$ViewHolder;)Landroid/widget/SeekBar;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/SeekBar;->getProgress()I

    move-result v2

    iget-object v3, p0, Lcom/delan/app/germanybluetooth/adapter/ProgmaticSwitchPointAdapter$ViewHolder$6$1;->this$2:Lcom/delan/app/germanybluetooth/adapter/ProgmaticSwitchPointAdapter$ViewHolder$6;

    iget-object v3, v3, Lcom/delan/app/germanybluetooth/adapter/ProgmaticSwitchPointAdapter$ViewHolder$6;->this$1:Lcom/delan/app/germanybluetooth/adapter/ProgmaticSwitchPointAdapter$ViewHolder;

    invoke-static {v3}, Lcom/delan/app/germanybluetooth/adapter/ProgmaticSwitchPointAdapter$ViewHolder;->access$500(Lcom/delan/app/germanybluetooth/adapter/ProgmaticSwitchPointAdapter$ViewHolder;)Landroid/widget/SeekBar;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/SeekBar;->getProgress()I

    move-result v3

    if-le v2, v3, :cond_80

    .line 329
    iget-object v2, p0, Lcom/delan/app/germanybluetooth/adapter/ProgmaticSwitchPointAdapter$ViewHolder$6$1;->this$2:Lcom/delan/app/germanybluetooth/adapter/ProgmaticSwitchPointAdapter$ViewHolder$6;

    iget-object v2, v2, Lcom/delan/app/germanybluetooth/adapter/ProgmaticSwitchPointAdapter$ViewHolder$6;->this$1:Lcom/delan/app/germanybluetooth/adapter/ProgmaticSwitchPointAdapter$ViewHolder;

    invoke-static {v2}, Lcom/delan/app/germanybluetooth/adapter/ProgmaticSwitchPointAdapter$ViewHolder;->access$700(Lcom/delan/app/germanybluetooth/adapter/ProgmaticSwitchPointAdapter$ViewHolder;)Landroid/widget/SeekBar;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/SeekBar;->getProgress()I

    move-result v2

    add-int/lit8 v1, v2, -0x1

    .line 330
    .local v1, "progress":I
    iget-object v2, p0, Lcom/delan/app/germanybluetooth/adapter/ProgmaticSwitchPointAdapter$ViewHolder$6$1;->this$2:Lcom/delan/app/germanybluetooth/adapter/ProgmaticSwitchPointAdapter$ViewHolder$6;

    iget-object v2, v2, Lcom/delan/app/germanybluetooth/adapter/ProgmaticSwitchPointAdapter$ViewHolder$6;->this$1:Lcom/delan/app/germanybluetooth/adapter/ProgmaticSwitchPointAdapter$ViewHolder;

    iget-object v2, v2, Lcom/delan/app/germanybluetooth/adapter/ProgmaticSwitchPointAdapter$ViewHolder;->this$0:Lcom/delan/app/germanybluetooth/adapter/ProgmaticSwitchPointAdapter;

    iget-object v3, p0, Lcom/delan/app/germanybluetooth/adapter/ProgmaticSwitchPointAdapter$ViewHolder$6$1;->this$2:Lcom/delan/app/germanybluetooth/adapter/ProgmaticSwitchPointAdapter$ViewHolder$6;

    iget-object v3, v3, Lcom/delan/app/germanybluetooth/adapter/ProgmaticSwitchPointAdapter$ViewHolder$6;->this$1:Lcom/delan/app/germanybluetooth/adapter/ProgmaticSwitchPointAdapter$ViewHolder;

    iget v3, v3, Lcom/delan/app/germanybluetooth/adapter/ProgmaticSwitchPointAdapter$ViewHolder;->position:I

    invoke-virtual {v2, v3}, Lcom/delan/app/germanybluetooth/adapter/ProgmaticSwitchPointAdapter;->getItem(I)Lcom/delan/app/germanybluetooth/bean/chars/ProgtimeProgmaticSwitchPoint;

    move-result-object v0

    .line 331
    .local v0, "point":Lcom/delan/app/germanybluetooth/bean/chars/ProgtimeProgmaticSwitchPoint;
    iget-object v2, p0, Lcom/delan/app/germanybluetooth/adapter/ProgmaticSwitchPointAdapter$ViewHolder$6$1;->this$2:Lcom/delan/app/germanybluetooth/adapter/ProgmaticSwitchPointAdapter$ViewHolder$6;

    iget-object v2, v2, Lcom/delan/app/germanybluetooth/adapter/ProgmaticSwitchPointAdapter$ViewHolder$6;->this$1:Lcom/delan/app/germanybluetooth/adapter/ProgmaticSwitchPointAdapter$ViewHolder;

    iget-object v2, v2, Lcom/delan/app/germanybluetooth/adapter/ProgmaticSwitchPointAdapter$ViewHolder;->this$0:Lcom/delan/app/germanybluetooth/adapter/ProgmaticSwitchPointAdapter;

    invoke-static {v2, v1}, Lcom/delan/app/germanybluetooth/adapter/ProgmaticSwitchPointAdapter;->access$1800(Lcom/delan/app/germanybluetooth/adapter/ProgmaticSwitchPointAdapter;I)I

    move-result v2

    iput v2, v0, Lcom/delan/app/germanybluetooth/bean/chars/ProgtimeProgmaticSwitchPoint;->h4:I

    .line 332
    iget-object v2, p0, Lcom/delan/app/germanybluetooth/adapter/ProgmaticSwitchPointAdapter$ViewHolder$6$1;->this$2:Lcom/delan/app/germanybluetooth/adapter/ProgmaticSwitchPointAdapter$ViewHolder$6;

    iget-object v2, v2, Lcom/delan/app/germanybluetooth/adapter/ProgmaticSwitchPointAdapter$ViewHolder$6;->this$1:Lcom/delan/app/germanybluetooth/adapter/ProgmaticSwitchPointAdapter$ViewHolder;

    iget-object v2, v2, Lcom/delan/app/germanybluetooth/adapter/ProgmaticSwitchPointAdapter$ViewHolder;->this$0:Lcom/delan/app/germanybluetooth/adapter/ProgmaticSwitchPointAdapter;

    invoke-static {v2, v1}, Lcom/delan/app/germanybluetooth/adapter/ProgmaticSwitchPointAdapter;->access$1900(Lcom/delan/app/germanybluetooth/adapter/ProgmaticSwitchPointAdapter;I)I

    move-result v2

    iput v2, v0, Lcom/delan/app/germanybluetooth/bean/chars/ProgtimeProgmaticSwitchPoint;->m4:I

    .line 333
    iget-object v2, p0, Lcom/delan/app/germanybluetooth/adapter/ProgmaticSwitchPointAdapter$ViewHolder$6$1;->this$2:Lcom/delan/app/germanybluetooth/adapter/ProgmaticSwitchPointAdapter$ViewHolder$6;

    iget-object v2, v2, Lcom/delan/app/germanybluetooth/adapter/ProgmaticSwitchPointAdapter$ViewHolder$6;->this$1:Lcom/delan/app/germanybluetooth/adapter/ProgmaticSwitchPointAdapter$ViewHolder;

    iget-object v2, v2, Lcom/delan/app/germanybluetooth/adapter/ProgmaticSwitchPointAdapter$ViewHolder;->this$0:Lcom/delan/app/germanybluetooth/adapter/ProgmaticSwitchPointAdapter;

    iget v3, v0, Lcom/delan/app/germanybluetooth/bean/chars/ProgtimeProgmaticSwitchPoint;->h4:I

    iget v4, v0, Lcom/delan/app/germanybluetooth/bean/chars/ProgtimeProgmaticSwitchPoint;->m4:I

    iget-object v5, p0, Lcom/delan/app/germanybluetooth/adapter/ProgmaticSwitchPointAdapter$ViewHolder$6$1;->this$2:Lcom/delan/app/germanybluetooth/adapter/ProgmaticSwitchPointAdapter$ViewHolder$6;

    iget-object v5, v5, Lcom/delan/app/germanybluetooth/adapter/ProgmaticSwitchPointAdapter$ViewHolder$6;->this$1:Lcom/delan/app/germanybluetooth/adapter/ProgmaticSwitchPointAdapter$ViewHolder;

    invoke-static {v5}, Lcom/delan/app/germanybluetooth/adapter/ProgmaticSwitchPointAdapter$ViewHolder;->access$700(Lcom/delan/app/germanybluetooth/adapter/ProgmaticSwitchPointAdapter$ViewHolder;)Landroid/widget/SeekBar;

    move-result-object v5

    iget-object v6, p0, Lcom/delan/app/germanybluetooth/adapter/ProgmaticSwitchPointAdapter$ViewHolder$6$1;->this$2:Lcom/delan/app/germanybluetooth/adapter/ProgmaticSwitchPointAdapter$ViewHolder$6;

    iget-object v6, v6, Lcom/delan/app/germanybluetooth/adapter/ProgmaticSwitchPointAdapter$ViewHolder$6;->this$1:Lcom/delan/app/germanybluetooth/adapter/ProgmaticSwitchPointAdapter$ViewHolder;

    invoke-static {v6}, Lcom/delan/app/germanybluetooth/adapter/ProgmaticSwitchPointAdapter$ViewHolder;->access$800(Lcom/delan/app/germanybluetooth/adapter/ProgmaticSwitchPointAdapter$ViewHolder;)Landroid/widget/TextView;

    move-result-object v6

    invoke-static {v2, v3, v4, v5, v6}, Lcom/delan/app/germanybluetooth/adapter/ProgmaticSwitchPointAdapter;->access$2000(Lcom/delan/app/germanybluetooth/adapter/ProgmaticSwitchPointAdapter;IILandroid/widget/SeekBar;Landroid/widget/TextView;)V

    .line 334
    iget-object v2, p0, Lcom/delan/app/germanybluetooth/adapter/ProgmaticSwitchPointAdapter$ViewHolder$6$1;->this$2:Lcom/delan/app/germanybluetooth/adapter/ProgmaticSwitchPointAdapter$ViewHolder$6;

    iget-object v2, v2, Lcom/delan/app/germanybluetooth/adapter/ProgmaticSwitchPointAdapter$ViewHolder$6;->this$1:Lcom/delan/app/germanybluetooth/adapter/ProgmaticSwitchPointAdapter$ViewHolder;

    iget-object v2, v2, Lcom/delan/app/germanybluetooth/adapter/ProgmaticSwitchPointAdapter$ViewHolder;->this$0:Lcom/delan/app/germanybluetooth/adapter/ProgmaticSwitchPointAdapter;

    invoke-static {v2}, Lcom/delan/app/germanybluetooth/adapter/ProgmaticSwitchPointAdapter;->access$2100(Lcom/delan/app/germanybluetooth/adapter/ProgmaticSwitchPointAdapter;)Lcom/delan/app/germanybluetooth/adapter/ProgmaticSwitchPointAdapter$OnSwitchPointChangeListener;

    move-result-object v2

    iget-object v3, p0, Lcom/delan/app/germanybluetooth/adapter/ProgmaticSwitchPointAdapter$ViewHolder$6$1;->this$2:Lcom/delan/app/germanybluetooth/adapter/ProgmaticSwitchPointAdapter$ViewHolder$6;

    iget-object v3, v3, Lcom/delan/app/germanybluetooth/adapter/ProgmaticSwitchPointAdapter$ViewHolder$6;->this$1:Lcom/delan/app/germanybluetooth/adapter/ProgmaticSwitchPointAdapter$ViewHolder;

    iget v3, v3, Lcom/delan/app/germanybluetooth/adapter/ProgmaticSwitchPointAdapter$ViewHolder;->position:I

    invoke-interface {v2, v3}, Lcom/delan/app/germanybluetooth/adapter/ProgmaticSwitchPointAdapter$OnSwitchPointChangeListener;->onSwitchPointChanged(I)V

    .line 336
    .end local v0    # "point":Lcom/delan/app/germanybluetooth/bean/chars/ProgtimeProgmaticSwitchPoint;
    .end local v1    # "progress":I
    :cond_80
    return-void
.end method
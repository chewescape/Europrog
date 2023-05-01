.class Lcom/delan/app/germanybluetooth/adapter/ProgtimeSwitchPointAdapter$ViewHolder$1$1;
.super Ljava/lang/Object;
.source "ProgtimeSwitchPointAdapter.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/delan/app/germanybluetooth/adapter/ProgtimeSwitchPointAdapter$ViewHolder$1;->onLongUpdate()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$2:Lcom/delan/app/germanybluetooth/adapter/ProgtimeSwitchPointAdapter$ViewHolder$1;


# direct methods
.method constructor <init>(Lcom/delan/app/germanybluetooth/adapter/ProgtimeSwitchPointAdapter$ViewHolder$1;)V
    .registers 2
    .param p1, "this$2"    # Lcom/delan/app/germanybluetooth/adapter/ProgtimeSwitchPointAdapter$ViewHolder$1;

    .prologue
    .line 227
    iput-object p1, p0, Lcom/delan/app/germanybluetooth/adapter/ProgtimeSwitchPointAdapter$ViewHolder$1$1;->this$2:Lcom/delan/app/germanybluetooth/adapter/ProgtimeSwitchPointAdapter$ViewHolder$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 8

    .prologue
    .line 230
    iget-object v2, p0, Lcom/delan/app/germanybluetooth/adapter/ProgtimeSwitchPointAdapter$ViewHolder$1$1;->this$2:Lcom/delan/app/germanybluetooth/adapter/ProgtimeSwitchPointAdapter$ViewHolder$1;

    iget-object v2, v2, Lcom/delan/app/germanybluetooth/adapter/ProgtimeSwitchPointAdapter$ViewHolder$1;->this$1:Lcom/delan/app/germanybluetooth/adapter/ProgtimeSwitchPointAdapter$ViewHolder;

    invoke-static {v2}, Lcom/delan/app/germanybluetooth/adapter/ProgtimeSwitchPointAdapter$ViewHolder;->access$100(Lcom/delan/app/germanybluetooth/adapter/ProgtimeSwitchPointAdapter$ViewHolder;)Landroid/widget/SeekBar;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/SeekBar;->getProgress()I

    move-result v2

    if-lez v2, :cond_74

    .line 231
    iget-object v2, p0, Lcom/delan/app/germanybluetooth/adapter/ProgtimeSwitchPointAdapter$ViewHolder$1$1;->this$2:Lcom/delan/app/germanybluetooth/adapter/ProgtimeSwitchPointAdapter$ViewHolder$1;

    iget-object v2, v2, Lcom/delan/app/germanybluetooth/adapter/ProgtimeSwitchPointAdapter$ViewHolder$1;->this$1:Lcom/delan/app/germanybluetooth/adapter/ProgtimeSwitchPointAdapter$ViewHolder;

    invoke-static {v2}, Lcom/delan/app/germanybluetooth/adapter/ProgtimeSwitchPointAdapter$ViewHolder;->access$100(Lcom/delan/app/germanybluetooth/adapter/ProgtimeSwitchPointAdapter$ViewHolder;)Landroid/widget/SeekBar;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/SeekBar;->getProgress()I

    move-result v2

    add-int/lit8 v1, v2, -0x1

    .line 232
    .local v1, "progress":I
    iget-object v2, p0, Lcom/delan/app/germanybluetooth/adapter/ProgtimeSwitchPointAdapter$ViewHolder$1$1;->this$2:Lcom/delan/app/germanybluetooth/adapter/ProgtimeSwitchPointAdapter$ViewHolder$1;

    iget-object v2, v2, Lcom/delan/app/germanybluetooth/adapter/ProgtimeSwitchPointAdapter$ViewHolder$1;->this$1:Lcom/delan/app/germanybluetooth/adapter/ProgtimeSwitchPointAdapter$ViewHolder;

    iget-object v2, v2, Lcom/delan/app/germanybluetooth/adapter/ProgtimeSwitchPointAdapter$ViewHolder;->this$0:Lcom/delan/app/germanybluetooth/adapter/ProgtimeSwitchPointAdapter;

    iget-object v3, p0, Lcom/delan/app/germanybluetooth/adapter/ProgtimeSwitchPointAdapter$ViewHolder$1$1;->this$2:Lcom/delan/app/germanybluetooth/adapter/ProgtimeSwitchPointAdapter$ViewHolder$1;

    iget-object v3, v3, Lcom/delan/app/germanybluetooth/adapter/ProgtimeSwitchPointAdapter$ViewHolder$1;->this$1:Lcom/delan/app/germanybluetooth/adapter/ProgtimeSwitchPointAdapter$ViewHolder;

    iget v3, v3, Lcom/delan/app/germanybluetooth/adapter/ProgtimeSwitchPointAdapter$ViewHolder;->position:I

    invoke-virtual {v2, v3}, Lcom/delan/app/germanybluetooth/adapter/ProgtimeSwitchPointAdapter;->getItem(I)Lcom/delan/app/germanybluetooth/bean/chars/ProgtimeProgmaticSwitchPoint;

    move-result-object v0

    .line 233
    .local v0, "point":Lcom/delan/app/germanybluetooth/bean/chars/ProgtimeProgmaticSwitchPoint;
    iget-object v2, p0, Lcom/delan/app/germanybluetooth/adapter/ProgtimeSwitchPointAdapter$ViewHolder$1$1;->this$2:Lcom/delan/app/germanybluetooth/adapter/ProgtimeSwitchPointAdapter$ViewHolder$1;

    iget-object v2, v2, Lcom/delan/app/germanybluetooth/adapter/ProgtimeSwitchPointAdapter$ViewHolder$1;->this$1:Lcom/delan/app/germanybluetooth/adapter/ProgtimeSwitchPointAdapter$ViewHolder;

    iget-object v2, v2, Lcom/delan/app/germanybluetooth/adapter/ProgtimeSwitchPointAdapter$ViewHolder;->this$0:Lcom/delan/app/germanybluetooth/adapter/ProgtimeSwitchPointAdapter;

    invoke-static {v2, v1}, Lcom/delan/app/germanybluetooth/adapter/ProgtimeSwitchPointAdapter;->access$1800(Lcom/delan/app/germanybluetooth/adapter/ProgtimeSwitchPointAdapter;I)I

    move-result v2

    iput v2, v0, Lcom/delan/app/germanybluetooth/bean/chars/ProgtimeProgmaticSwitchPoint;->h1:I

    .line 234
    iget-object v2, p0, Lcom/delan/app/germanybluetooth/adapter/ProgtimeSwitchPointAdapter$ViewHolder$1$1;->this$2:Lcom/delan/app/germanybluetooth/adapter/ProgtimeSwitchPointAdapter$ViewHolder$1;

    iget-object v2, v2, Lcom/delan/app/germanybluetooth/adapter/ProgtimeSwitchPointAdapter$ViewHolder$1;->this$1:Lcom/delan/app/germanybluetooth/adapter/ProgtimeSwitchPointAdapter$ViewHolder;

    iget-object v2, v2, Lcom/delan/app/germanybluetooth/adapter/ProgtimeSwitchPointAdapter$ViewHolder;->this$0:Lcom/delan/app/germanybluetooth/adapter/ProgtimeSwitchPointAdapter;

    invoke-static {v2, v1}, Lcom/delan/app/germanybluetooth/adapter/ProgtimeSwitchPointAdapter;->access$1900(Lcom/delan/app/germanybluetooth/adapter/ProgtimeSwitchPointAdapter;I)I

    move-result v2

    iput v2, v0, Lcom/delan/app/germanybluetooth/bean/chars/ProgtimeProgmaticSwitchPoint;->m1:I

    .line 235
    iget-object v2, p0, Lcom/delan/app/germanybluetooth/adapter/ProgtimeSwitchPointAdapter$ViewHolder$1$1;->this$2:Lcom/delan/app/germanybluetooth/adapter/ProgtimeSwitchPointAdapter$ViewHolder$1;

    iget-object v2, v2, Lcom/delan/app/germanybluetooth/adapter/ProgtimeSwitchPointAdapter$ViewHolder$1;->this$1:Lcom/delan/app/germanybluetooth/adapter/ProgtimeSwitchPointAdapter$ViewHolder;

    iget-object v2, v2, Lcom/delan/app/germanybluetooth/adapter/ProgtimeSwitchPointAdapter$ViewHolder;->this$0:Lcom/delan/app/germanybluetooth/adapter/ProgtimeSwitchPointAdapter;

    iget v3, v0, Lcom/delan/app/germanybluetooth/bean/chars/ProgtimeProgmaticSwitchPoint;->h1:I

    iget v4, v0, Lcom/delan/app/germanybluetooth/bean/chars/ProgtimeProgmaticSwitchPoint;->m1:I

    iget-object v5, p0, Lcom/delan/app/germanybluetooth/adapter/ProgtimeSwitchPointAdapter$ViewHolder$1$1;->this$2:Lcom/delan/app/germanybluetooth/adapter/ProgtimeSwitchPointAdapter$ViewHolder$1;

    iget-object v5, v5, Lcom/delan/app/germanybluetooth/adapter/ProgtimeSwitchPointAdapter$ViewHolder$1;->this$1:Lcom/delan/app/germanybluetooth/adapter/ProgtimeSwitchPointAdapter$ViewHolder;

    invoke-static {v5}, Lcom/delan/app/germanybluetooth/adapter/ProgtimeSwitchPointAdapter$ViewHolder;->access$100(Lcom/delan/app/germanybluetooth/adapter/ProgtimeSwitchPointAdapter$ViewHolder;)Landroid/widget/SeekBar;

    move-result-object v5

    iget-object v6, p0, Lcom/delan/app/germanybluetooth/adapter/ProgtimeSwitchPointAdapter$ViewHolder$1$1;->this$2:Lcom/delan/app/germanybluetooth/adapter/ProgtimeSwitchPointAdapter$ViewHolder$1;

    iget-object v6, v6, Lcom/delan/app/germanybluetooth/adapter/ProgtimeSwitchPointAdapter$ViewHolder$1;->this$1:Lcom/delan/app/germanybluetooth/adapter/ProgtimeSwitchPointAdapter$ViewHolder;

    invoke-static {v6}, Lcom/delan/app/germanybluetooth/adapter/ProgtimeSwitchPointAdapter$ViewHolder;->access$200(Lcom/delan/app/germanybluetooth/adapter/ProgtimeSwitchPointAdapter$ViewHolder;)Landroid/widget/TextView;

    move-result-object v6

    invoke-static {v2, v3, v4, v5, v6}, Lcom/delan/app/germanybluetooth/adapter/ProgtimeSwitchPointAdapter;->access$2000(Lcom/delan/app/germanybluetooth/adapter/ProgtimeSwitchPointAdapter;IILandroid/widget/SeekBar;Landroid/widget/TextView;)V

    .line 236
    iget-object v2, p0, Lcom/delan/app/germanybluetooth/adapter/ProgtimeSwitchPointAdapter$ViewHolder$1$1;->this$2:Lcom/delan/app/germanybluetooth/adapter/ProgtimeSwitchPointAdapter$ViewHolder$1;

    iget-object v2, v2, Lcom/delan/app/germanybluetooth/adapter/ProgtimeSwitchPointAdapter$ViewHolder$1;->this$1:Lcom/delan/app/germanybluetooth/adapter/ProgtimeSwitchPointAdapter$ViewHolder;

    iget-object v2, v2, Lcom/delan/app/germanybluetooth/adapter/ProgtimeSwitchPointAdapter$ViewHolder;->this$0:Lcom/delan/app/germanybluetooth/adapter/ProgtimeSwitchPointAdapter;

    invoke-static {v2}, Lcom/delan/app/germanybluetooth/adapter/ProgtimeSwitchPointAdapter;->access$2100(Lcom/delan/app/germanybluetooth/adapter/ProgtimeSwitchPointAdapter;)Lcom/delan/app/germanybluetooth/adapter/ProgtimeSwitchPointAdapter$OnSwitchPointChangeListener;

    move-result-object v2

    iget-object v3, p0, Lcom/delan/app/germanybluetooth/adapter/ProgtimeSwitchPointAdapter$ViewHolder$1$1;->this$2:Lcom/delan/app/germanybluetooth/adapter/ProgtimeSwitchPointAdapter$ViewHolder$1;

    iget-object v3, v3, Lcom/delan/app/germanybluetooth/adapter/ProgtimeSwitchPointAdapter$ViewHolder$1;->this$1:Lcom/delan/app/germanybluetooth/adapter/ProgtimeSwitchPointAdapter$ViewHolder;

    iget v3, v3, Lcom/delan/app/germanybluetooth/adapter/ProgtimeSwitchPointAdapter$ViewHolder;->position:I

    invoke-interface {v2, v3}, Lcom/delan/app/germanybluetooth/adapter/ProgtimeSwitchPointAdapter$OnSwitchPointChangeListener;->onSwitchPointChanged(I)V

    .line 238
    .end local v0    # "point":Lcom/delan/app/germanybluetooth/bean/chars/ProgtimeProgmaticSwitchPoint;
    .end local v1    # "progress":I
    :cond_74
    return-void
.end method

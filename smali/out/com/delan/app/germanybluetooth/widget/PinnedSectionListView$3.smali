.class Lcom/delan/app/germanybluetooth/widget/PinnedSectionListView$3;
.super Ljava/lang/Object;
.source "PinnedSectionListView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/delan/app/germanybluetooth/widget/PinnedSectionListView;->onRestoreInstanceState(Landroid/os/Parcelable;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/delan/app/germanybluetooth/widget/PinnedSectionListView;


# direct methods
.method constructor <init>(Lcom/delan/app/germanybluetooth/widget/PinnedSectionListView;)V
    .registers 2
    .param p1, "this$0"    # Lcom/delan/app/germanybluetooth/widget/PinnedSectionListView;

    .prologue
    .line 352
    iput-object p1, p0, Lcom/delan/app/germanybluetooth/widget/PinnedSectionListView$3;->this$0:Lcom/delan/app/germanybluetooth/widget/PinnedSectionListView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 2

    .prologue
    .line 355
    iget-object v0, p0, Lcom/delan/app/germanybluetooth/widget/PinnedSectionListView$3;->this$0:Lcom/delan/app/germanybluetooth/widget/PinnedSectionListView;

    invoke-virtual {v0}, Lcom/delan/app/germanybluetooth/widget/PinnedSectionListView;->recreatePinnedShadow()V

    .line 356
    return-void
.end method

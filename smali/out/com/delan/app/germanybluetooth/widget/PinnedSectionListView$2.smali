.class Lcom/delan/app/germanybluetooth/widget/PinnedSectionListView$2;
.super Landroid/database/DataSetObserver;
.source "PinnedSectionListView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/delan/app/germanybluetooth/widget/PinnedSectionListView;
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
    .line 135
    iput-object p1, p0, Lcom/delan/app/germanybluetooth/widget/PinnedSectionListView$2;->this$0:Lcom/delan/app/germanybluetooth/widget/PinnedSectionListView;

    invoke-direct {p0}, Landroid/database/DataSetObserver;-><init>()V

    return-void
.end method


# virtual methods
.method public onChanged()V
    .registers 2

    .prologue
    .line 138
    iget-object v0, p0, Lcom/delan/app/germanybluetooth/widget/PinnedSectionListView$2;->this$0:Lcom/delan/app/germanybluetooth/widget/PinnedSectionListView;

    invoke-virtual {v0}, Lcom/delan/app/germanybluetooth/widget/PinnedSectionListView;->recreatePinnedShadow()V

    .line 139
    return-void
.end method

.method public onInvalidated()V
    .registers 2

    .prologue
    .line 143
    iget-object v0, p0, Lcom/delan/app/germanybluetooth/widget/PinnedSectionListView$2;->this$0:Lcom/delan/app/germanybluetooth/widget/PinnedSectionListView;

    invoke-virtual {v0}, Lcom/delan/app/germanybluetooth/widget/PinnedSectionListView;->recreatePinnedShadow()V

    .line 144
    return-void
.end method

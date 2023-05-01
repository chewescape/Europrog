.class public Lcom/idelan/app/widget/gridview/paging/HeaderGridView$FixedViewInfo;
.super Ljava/lang/Object;
.source "HeaderGridView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/idelan/app/widget/gridview/paging/HeaderGridView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "FixedViewInfo"
.end annotation


# instance fields
.field public data:Ljava/lang/Object;

.field public isSelectable:Z

.field final synthetic this$0:Lcom/idelan/app/widget/gridview/paging/HeaderGridView;

.field public view:Landroid/view/View;

.field public viewContainer:Landroid/view/ViewGroup;


# direct methods
.method public constructor <init>(Lcom/idelan/app/widget/gridview/paging/HeaderGridView;)V
    .registers 2

    .prologue
    .line 230
    iput-object p1, p0, Lcom/idelan/app/widget/gridview/paging/HeaderGridView$FixedViewInfo;->this$0:Lcom/idelan/app/widget/gridview/paging/HeaderGridView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

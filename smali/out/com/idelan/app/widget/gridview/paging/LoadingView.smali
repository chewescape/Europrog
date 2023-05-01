.class public Lcom/idelan/app/widget/gridview/paging/LoadingView;
.super Landroid/widget/LinearLayout;
.source "LoadingView.java"


# instance fields
.field private context:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 13
    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 14
    iput-object p1, p0, Lcom/idelan/app/widget/gridview/paging/LoadingView;->context:Landroid/content/Context;

    .line 15
    invoke-direct {p0}, Lcom/idelan/app/widget/gridview/paging/LoadingView;->init()V

    .line 16
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 19
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 20
    iput-object p1, p0, Lcom/idelan/app/widget/gridview/paging/LoadingView;->context:Landroid/content/Context;

    .line 21
    invoke-direct {p0}, Lcom/idelan/app/widget/gridview/paging/LoadingView;->init()V

    .line 22
    return-void
.end method

.method private init()V
    .registers 4

    .prologue
    .line 25
    invoke-virtual {p0}, Lcom/idelan/app/widget/gridview/paging/LoadingView;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/idelan/app/widget/gridview/paging/LoadingView;->context:Landroid/content/Context;

    const-string v2, "loading_view"

    invoke-static {v1, v2}, Lcom/idelan/app/Util/ResourceUtil;->getId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    invoke-static {v0, v1, p0}, Lcom/idelan/app/widget/gridview/paging/LoadingView;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 26
    return-void
.end method

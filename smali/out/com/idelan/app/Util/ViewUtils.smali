.class public Lcom/idelan/app/Util/ViewUtils;
.super Ljava/lang/Object;
.source "ViewUtils.java"


# static fields
.field private static final CLASS_NAME_GRID_VIEW:Ljava/lang/String; = "android.widget.GridView"

.field private static final FIELD_NAME_VERTICAL_SPACING:Ljava/lang/String; = "mVerticalSpacing"


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getAbsListViewHeightBasedOnChildren(Landroid/widget/AbsListView;)I
    .registers 8
    .param p0, "view"    # Landroid/widget/AbsListView;

    .prologue
    const/4 v6, -0x2

    const/4 v4, 0x0

    .line 151
    if-eqz p0, :cond_c

    invoke-virtual {p0}, Landroid/widget/AbsListView;->getAdapter()Landroid/widget/Adapter;

    move-result-object v0

    check-cast v0, Landroid/widget/ListAdapter;

    .local v0, "adapter":Landroid/widget/ListAdapter;
    if-nez v0, :cond_e

    .end local v0    # "adapter":Landroid/widget/ListAdapter;
    :cond_c
    move v1, v4

    .line 166
    :goto_d
    return v1

    .line 155
    .restart local v0    # "adapter":Landroid/widget/ListAdapter;
    :cond_e
    const/4 v1, 0x0

    .line 156
    .local v1, "height":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_10
    invoke-interface {v0}, Landroid/widget/ListAdapter;->getCount()I

    move-result v5

    if-lt v2, v5, :cond_21

    .line 165
    invoke-virtual {p0}, Landroid/widget/AbsListView;->getPaddingTop()I

    move-result v4

    invoke-virtual {p0}, Landroid/widget/AbsListView;->getPaddingBottom()I

    move-result v5

    add-int/2addr v4, v5

    add-int/2addr v1, v4

    .line 166
    goto :goto_d

    .line 157
    :cond_21
    const/4 v5, 0x0

    invoke-interface {v0, v2, v5, p0}, Landroid/widget/ListAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v3

    .line 158
    .local v3, "item":Landroid/view/View;
    instance-of v5, v3, Landroid/view/ViewGroup;

    if-eqz v5, :cond_32

    .line 159
    new-instance v5, Landroid/widget/RelativeLayout$LayoutParams;

    .line 160
    invoke-direct {v5, v6, v6}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 159
    invoke-virtual {v3, v5}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 162
    :cond_32
    invoke-virtual {v3, v4, v4}, Landroid/view/View;->measure(II)V

    .line 163
    invoke-virtual {v3}, Landroid/view/View;->getMeasuredHeight()I

    move-result v5

    add-int/2addr v1, v5

    .line 156
    add-int/lit8 v2, v2, 0x1

    goto :goto_10
.end method

.method public static getGridViewVerticalSpacing(Landroid/widget/GridView;)I
    .registers 7
    .param p0, "view"    # Landroid/widget/GridView;

    .prologue
    .line 123
    const/4 v0, 0x0

    .line 124
    .local v0, "demo":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const/4 v3, 0x0

    .line 126
    .local v3, "verticalSpacing":I
    :try_start_2
    const-string v5, "android.widget.GridView"

    invoke-static {v5}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 127
    const-string v5, "mVerticalSpacing"

    invoke-virtual {v0, v5}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v2

    .line 128
    .local v2, "field":Ljava/lang/reflect/Field;
    const/4 v5, 0x1

    invoke-virtual {v2, v5}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 129
    invoke-virtual {v2, p0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I
    :try_end_1b
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_1b} :catch_1e

    move-result v3

    move v4, v3

    .line 140
    .end local v2    # "field":Ljava/lang/reflect/Field;
    .end local v3    # "verticalSpacing":I
    .local v4, "verticalSpacing":I
    :goto_1d
    return v4

    .line 131
    .end local v4    # "verticalSpacing":I
    .restart local v3    # "verticalSpacing":I
    :catch_1e
    move-exception v1

    .line 138
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    move v4, v3

    .line 140
    .end local v3    # "verticalSpacing":I
    .restart local v4    # "verticalSpacing":I
    goto :goto_1d
.end method

.method public static getListViewHeightBasedOnChildren(Landroid/widget/ListView;)I
    .registers 6
    .param p0, "view"    # Landroid/widget/ListView;

    .prologue
    .line 51
    invoke-static {p0}, Lcom/idelan/app/Util/ViewUtils;->getAbsListViewHeightBasedOnChildren(Landroid/widget/AbsListView;)I

    move-result v2

    .line 54
    .local v2, "height":I
    if-eqz p0, :cond_1a

    invoke-virtual {p0}, Landroid/widget/ListView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v0

    .local v0, "adapter":Landroid/widget/ListAdapter;
    if-eqz v0, :cond_1a

    .line 55
    invoke-interface {v0}, Landroid/widget/ListAdapter;->getCount()I

    move-result v1

    .local v1, "adapterCount":I
    if-lez v1, :cond_1a

    .line 56
    invoke-virtual {p0}, Landroid/widget/ListView;->getDividerHeight()I

    move-result v3

    add-int/lit8 v4, v1, -0x1

    mul-int/2addr v3, v4

    add-int/2addr v2, v3

    .line 58
    .end local v0    # "adapter":Landroid/widget/ListAdapter;
    .end local v1    # "adapterCount":I
    :cond_1a
    return v2
.end method

.method public static setAbsListViewHeightBasedOnChildren(Landroid/widget/AbsListView;)V
    .registers 2
    .param p0, "view"    # Landroid/widget/AbsListView;

    .prologue
    .line 214
    invoke-static {p0}, Lcom/idelan/app/Util/ViewUtils;->getAbsListViewHeightBasedOnChildren(Landroid/widget/AbsListView;)I

    move-result v0

    invoke-static {p0, v0}, Lcom/idelan/app/Util/ViewUtils;->setViewHeight(Landroid/view/View;I)V

    .line 215
    return-void
.end method

.method public static setListViewHeightBasedOnChildren(Landroid/widget/ListView;)V
    .registers 2
    .param p0, "view"    # Landroid/widget/ListView;

    .prologue
    .line 203
    invoke-static {p0}, Lcom/idelan/app/Util/ViewUtils;->getListViewHeightBasedOnChildren(Landroid/widget/ListView;)I

    move-result v0

    invoke-static {p0, v0}, Lcom/idelan/app/Util/ViewUtils;->setViewHeight(Landroid/view/View;I)V

    .line 204
    return-void
.end method

.method public static setSearchViewOnClickListener(Landroid/view/View;Landroid/view/View$OnClickListener;)V
    .registers 8
    .param p0, "v"    # Landroid/view/View;
    .param p1, "listener"    # Landroid/view/View$OnClickListener;

    .prologue
    .line 225
    instance-of v5, p0, Landroid/view/ViewGroup;

    if-eqz v5, :cond_e

    move-object v2, p0

    .line 226
    check-cast v2, Landroid/view/ViewGroup;

    .line 227
    .local v2, "group":Landroid/view/ViewGroup;
    invoke-virtual {v2}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v1

    .line 228
    .local v1, "count":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_c
    if-lt v3, v1, :cond_f

    .line 242
    .end local v1    # "count":I
    .end local v2    # "group":Landroid/view/ViewGroup;
    .end local v3    # "i":I
    :cond_e
    return-void

    .line 229
    .restart local v1    # "count":I
    .restart local v2    # "group":Landroid/view/ViewGroup;
    .restart local v3    # "i":I
    :cond_f
    invoke-virtual {v2, v3}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 230
    .local v0, "child":Landroid/view/View;
    instance-of v5, v0, Landroid/widget/LinearLayout;

    if-nez v5, :cond_1b

    .line 231
    instance-of v5, v0, Landroid/widget/RelativeLayout;

    if-eqz v5, :cond_1e

    .line 232
    :cond_1b
    invoke-static {v0, p1}, Lcom/idelan/app/Util/ViewUtils;->setSearchViewOnClickListener(Landroid/view/View;Landroid/view/View$OnClickListener;)V

    .line 235
    :cond_1e
    instance-of v5, v0, Landroid/widget/TextView;

    if-eqz v5, :cond_29

    move-object v4, v0

    .line 236
    check-cast v4, Landroid/widget/TextView;

    .line 237
    .local v4, "text":Landroid/widget/TextView;
    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setFocusable(Z)V

    .line 239
    .end local v4    # "text":Landroid/widget/TextView;
    :cond_29
    invoke-virtual {v0, p1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 228
    add-int/lit8 v3, v3, 0x1

    goto :goto_c
.end method

.method public static setViewHeight(Landroid/view/View;I)V
    .registers 3
    .param p0, "view"    # Landroid/view/View;
    .param p1, "height"    # I

    .prologue
    .line 176
    if-nez p0, :cond_3

    .line 182
    :goto_2
    return-void

    .line 180
    :cond_3
    invoke-virtual {p0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    .line 181
    .local v0, "params":Landroid/view/ViewGroup$LayoutParams;
    iput p1, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    goto :goto_2
.end method

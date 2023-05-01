.class public final Lcom/idelan/DeLanSDK/R$layout;
.super Ljava/lang/Object;
.source "R.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/idelan/DeLanSDK/R;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "layout"
.end annotation


# static fields
.field public static activity_push:I

.field public static item_push_notification:I

.field public static listview_footer:I

.field public static listview_header:I

.field public static loading_view:I

.field public static notification_item:I

.field public static softupdate_progress:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 83
    const/high16 v0, 0x7f030000

    sput v0, Lcom/idelan/DeLanSDK/R$layout;->activity_push:I

    .line 84
    const v0, 0x7f030001

    sput v0, Lcom/idelan/DeLanSDK/R$layout;->item_push_notification:I

    .line 85
    const v0, 0x7f030002

    sput v0, Lcom/idelan/DeLanSDK/R$layout;->listview_footer:I

    .line 86
    const v0, 0x7f030003

    sput v0, Lcom/idelan/DeLanSDK/R$layout;->listview_header:I

    .line 87
    const v0, 0x7f030004

    sput v0, Lcom/idelan/DeLanSDK/R$layout;->loading_view:I

    .line 88
    const v0, 0x7f030005

    sput v0, Lcom/idelan/DeLanSDK/R$layout;->notification_item:I

    .line 89
    const v0, 0x7f030006

    sput v0, Lcom/idelan/DeLanSDK/R$layout;->softupdate_progress:I

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 82
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

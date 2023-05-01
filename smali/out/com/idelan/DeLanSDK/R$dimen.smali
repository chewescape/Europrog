.class public final Lcom/idelan/DeLanSDK/R$dimen;
.super Ljava/lang/Object;
.source "R.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/idelan/DeLanSDK/R;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "dimen"
.end annotation


# static fields
.field public static loading_view_margin_layout:I

.field public static loading_view_margin_right:I

.field public static loading_view_progress_size:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 17
    const v0, 0x7f050001

    sput v0, Lcom/idelan/DeLanSDK/R$dimen;->loading_view_margin_layout:I

    .line 18
    const v0, 0x7f050002

    sput v0, Lcom/idelan/DeLanSDK/R$dimen;->loading_view_margin_right:I

    .line 19
    const/high16 v0, 0x7f050000

    sput v0, Lcom/idelan/DeLanSDK/R$dimen;->loading_view_progress_size:I

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

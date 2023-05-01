.class public Lcom/delan/app/germanybluetooth/config/Common;
.super Ljava/lang/Object;
.source "Common.java"


# static fields
.field public static AppId:Ljava/lang/String; = null

.field public static AppKey:Ljava/lang/String; = null

.field public static final BrandTypeXml:Ljava/lang/String; = "brands_and_types.xml"

.field public static DEVICE_SCREEN_HEIGHT:I = 0x0

.field public static DEVICE_SCREEN_WIDTH:I = 0x0

.field public static final EXAR_DATA:Ljava/lang/String; = "EXAR_DATA"

.field public static final INTEGER_DATA:Ljava/lang/String; = "INTEGER_DATA"

.field public static final STRING_DATA:Ljava/lang/String; = "STRING_DATA"

.field public static TYPE_FACE_LANEUP:Landroid/graphics/Typeface; = null

.field public static TYPE_FACE_LANTINGXIHEI:Landroid/graphics/Typeface; = null

.field public static final ZSAppId:Ljava/lang/String; = "1000"

.field public static final ZSAppKey:Ljava/lang/String; = "2f39d871a38a4841aab3be3837e39cf4"

.field public static errors:Lcom/delan/app/germanybluetooth/bean/ErrorCode;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x0

    .line 23
    sput-object v0, Lcom/delan/app/germanybluetooth/config/Common;->TYPE_FACE_LANEUP:Landroid/graphics/Typeface;

    .line 24
    sput-object v0, Lcom/delan/app/germanybluetooth/config/Common;->TYPE_FACE_LANTINGXIHEI:Landroid/graphics/Typeface;

    .line 25
    sput-object v0, Lcom/delan/app/germanybluetooth/config/Common;->errors:Lcom/delan/app/germanybluetooth/bean/ErrorCode;

    .line 26
    const-string v0, "1000"

    sput-object v0, Lcom/delan/app/germanybluetooth/config/Common;->AppId:Ljava/lang/String;

    .line 27
    const-string v0, "2f39d871a38a4841aab3be3837e39cf4"

    sput-object v0, Lcom/delan/app/germanybluetooth/config/Common;->AppKey:Ljava/lang/String;

    .line 28
    sput v1, Lcom/delan/app/germanybluetooth/config/Common;->DEVICE_SCREEN_WIDTH:I

    .line 29
    sput v1, Lcom/delan/app/germanybluetooth/config/Common;->DEVICE_SCREEN_HEIGHT:I

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

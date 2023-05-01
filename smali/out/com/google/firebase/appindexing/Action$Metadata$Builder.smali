.class public Lcom/google/firebase/appindexing/Action$Metadata$Builder;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/firebase/appindexing/Action$Metadata;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# instance fields
.field private aWs:Z

.field private aWt:Z


# direct methods
.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/firebase/appindexing/Action$Metadata$Builder;->aWs:Z

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/firebase/appindexing/Action$Metadata$Builder;->aWt:Z

    return-void
.end method


# virtual methods
.method public setUpload(Z)Lcom/google/firebase/appindexing/Action$Metadata$Builder;
    .registers 2

    iput-boolean p1, p0, Lcom/google/firebase/appindexing/Action$Metadata$Builder;->aWs:Z

    return-object p0
.end method

.method public zzcny()Lcom/google/firebase/appindexing/internal/ActionImpl$MetadataImpl;
    .registers 7

    const/4 v2, 0x0

    new-instance v0, Lcom/google/firebase/appindexing/internal/ActionImpl$MetadataImpl;

    iget-boolean v1, p0, Lcom/google/firebase/appindexing/Action$Metadata$Builder;->aWs:Z

    const/4 v5, 0x0

    move-object v3, v2

    move-object v4, v2

    invoke-direct/range {v0 .. v5}, Lcom/google/firebase/appindexing/internal/ActionImpl$MetadataImpl;-><init>(ZLjava/lang/String;Ljava/lang/String;[BZ)V

    return-object v0
.end method

.class public Lcom/google/android/gms/appdatasearch/zzh;
.super Ljava/lang/Object;


# static fields
.field private static final gB:[Ljava/lang/String;

.field private static final gC:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 4

    const/4 v0, 0x0

    const/16 v1, 0xa

    new-array v1, v1, [Ljava/lang/String;

    const-string v2, "text1"

    aput-object v2, v1, v0

    const/4 v2, 0x1

    const-string v3, "text2"

    aput-object v3, v1, v2

    const/4 v2, 0x2

    const-string v3, "icon"

    aput-object v3, v1, v2

    const/4 v2, 0x3

    const-string v3, "intent_action"

    aput-object v3, v1, v2

    const/4 v2, 0x4

    const-string v3, "intent_data"

    aput-object v3, v1, v2

    const/4 v2, 0x5

    const-string v3, "intent_data_id"

    aput-object v3, v1, v2

    const/4 v2, 0x6

    const-string v3, "intent_extra_data"

    aput-object v3, v1, v2

    const/4 v2, 0x7

    const-string v3, "suggest_large_icon"

    aput-object v3, v1, v2

    const/16 v2, 0x8

    const-string v3, "intent_activity"

    aput-object v3, v1, v2

    const/16 v2, 0x9

    const-string v3, "thing_proto"

    aput-object v3, v1, v2

    sput-object v1, Lcom/google/android/gms/appdatasearch/zzh;->gB:[Ljava/lang/String;

    new-instance v1, Ljava/util/HashMap;

    sget-object v2, Lcom/google/android/gms/appdatasearch/zzh;->gB:[Ljava/lang/String;

    array-length v2, v2

    invoke-direct {v1, v2}, Ljava/util/HashMap;-><init>(I)V

    sput-object v1, Lcom/google/android/gms/appdatasearch/zzh;->gC:Ljava/util/Map;

    :goto_44
    sget-object v1, Lcom/google/android/gms/appdatasearch/zzh;->gB:[Ljava/lang/String;

    array-length v1, v1

    if-ge v0, v1, :cond_59

    sget-object v1, Lcom/google/android/gms/appdatasearch/zzh;->gC:Ljava/util/Map;

    sget-object v2, Lcom/google/android/gms/appdatasearch/zzh;->gB:[Ljava/lang/String;

    aget-object v2, v2, v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v0, v0, 0x1

    goto :goto_44

    :cond_59
    return-void
.end method

.method public static zzahq()I
    .registers 1

    sget-object v0, Lcom/google/android/gms/appdatasearch/zzh;->gB:[Ljava/lang/String;

    array-length v0, v0

    return v0
.end method

.method public static zzcn(I)Ljava/lang/String;
    .registers 2

    if-ltz p0, :cond_7

    sget-object v0, Lcom/google/android/gms/appdatasearch/zzh;->gB:[Ljava/lang/String;

    array-length v0, v0

    if-lt p0, v0, :cond_9

    :cond_7
    const/4 v0, 0x0

    :goto_8
    return-object v0

    :cond_9
    sget-object v0, Lcom/google/android/gms/appdatasearch/zzh;->gB:[Ljava/lang/String;

    aget-object v0, v0, p0

    goto :goto_8
.end method

.method public static zzfq(Ljava/lang/String;)I
    .registers 4

    sget-object v0, Lcom/google/android/gms/appdatasearch/zzh;->gC:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    if-nez v0, :cond_33

    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    add-int/lit8 v2, v2, 0x2c

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v2, "["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "] is not a valid global search section name"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_33
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method

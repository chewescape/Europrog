.class public Lcom/google/android/gms/internal/zznj;
.super Ljava/lang/Object;


# direct methods
.method public static zza(Ljava/lang/String;Lcom/google/android/gms/internal/zzvw$zzc;)Lcom/google/android/gms/appdatasearch/DocumentSection;
    .registers 5

    new-instance v0, Lcom/google/android/gms/appdatasearch/RegisterSectionInfo$zza;

    invoke-direct {v0, p0}, Lcom/google/android/gms/appdatasearch/RegisterSectionInfo$zza;-><init>(Ljava/lang/String;)V

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/appdatasearch/RegisterSectionInfo$zza;->zzaz(Z)Lcom/google/android/gms/appdatasearch/RegisterSectionInfo$zza;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/android/gms/appdatasearch/RegisterSectionInfo$zza;->zzfs(Ljava/lang/String;)Lcom/google/android/gms/appdatasearch/RegisterSectionInfo$zza;

    move-result-object v0

    const-string v1, "blob"

    invoke-virtual {v0, v1}, Lcom/google/android/gms/appdatasearch/RegisterSectionInfo$zza;->zzfr(Ljava/lang/String;)Lcom/google/android/gms/appdatasearch/RegisterSectionInfo$zza;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/appdatasearch/RegisterSectionInfo$zza;->zzahr()Lcom/google/android/gms/appdatasearch/RegisterSectionInfo;

    move-result-object v0

    new-instance v1, Lcom/google/android/gms/appdatasearch/DocumentSection;

    invoke-static {p1}, Lcom/google/android/gms/internal/zzasa;->zzf(Lcom/google/android/gms/internal/zzasa;)[B

    move-result-object v2

    invoke-direct {v1, v2, v0}, Lcom/google/android/gms/appdatasearch/DocumentSection;-><init>([BLcom/google/android/gms/appdatasearch/RegisterSectionInfo;)V

    return-object v1
.end method

.method public static zza(Lcom/google/android/gms/appindexing/Action;JLjava/lang/String;I)Lcom/google/android/gms/appdatasearch/UsageInfo;
    .registers 14

    const/4 v1, 0x0

    const/4 v2, 0x0

    new-instance v3, Landroid/os/Bundle;

    invoke-direct {v3}, Landroid/os/Bundle;-><init>()V

    invoke-virtual {p0}, Lcom/google/android/gms/appindexing/Action;->zzahu()Landroid/os/Bundle;

    move-result-object v0

    invoke-virtual {v3, v0}, Landroid/os/Bundle;->putAll(Landroid/os/Bundle;)V

    const-string v0, "object"

    invoke-virtual {v3, v0}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v4

    const-string v0, "id"

    invoke-virtual {v4, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_db

    const-string v0, "id"

    invoke-virtual {v4, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    :goto_26
    const-string v5, "name"

    invoke-virtual {v4, v5}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const-string v6, "type"

    invoke-virtual {v4, v6}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    const-string v7, "url"

    invoke-virtual {v4, v7}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    invoke-static {p3, v4}, Lcom/google/android/gms/internal/zznk;->zza(Ljava/lang/String;Landroid/net/Uri;)Landroid/content/Intent;

    move-result-object v4

    invoke-static {v4, v5, v0, v6, v1}, Lcom/google/android/gms/appdatasearch/UsageInfo;->zza(Landroid/content/Intent;Ljava/lang/String;Landroid/net/Uri;Ljava/lang/String;Ljava/util/List;)Lcom/google/android/gms/appdatasearch/DocumentContents$zza;

    move-result-object v1

    const-string v0, ".private:ssbContext"

    invoke-virtual {v3, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_5e

    const-string v0, ".private:ssbContext"

    invoke-virtual {v3, v0}, Landroid/os/Bundle;->getByteArray(Ljava/lang/String;)[B

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/appdatasearch/DocumentSection;->zzl([B)Lcom/google/android/gms/appdatasearch/DocumentSection;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/google/android/gms/appdatasearch/DocumentContents$zza;->zza(Lcom/google/android/gms/appdatasearch/DocumentSection;)Lcom/google/android/gms/appdatasearch/DocumentContents$zza;

    const-string v0, ".private:ssbContext"

    invoke-virtual {v3, v0}, Landroid/os/Bundle;->remove(Ljava/lang/String;)V

    :cond_5e
    const-string v0, ".private:accountName"

    invoke-virtual {v3, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_7b

    const-string v0, ".private:accountName"

    invoke-virtual {v3, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    new-instance v5, Landroid/accounts/Account;

    const-string v6, "com.google"

    invoke-direct {v5, v0, v6}, Landroid/accounts/Account;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1, v5}, Lcom/google/android/gms/appdatasearch/DocumentContents$zza;->zzb(Landroid/accounts/Account;)Lcom/google/android/gms/appdatasearch/DocumentContents$zza;

    const-string v0, ".private:accountName"

    invoke-virtual {v3, v0}, Landroid/os/Bundle;->remove(Ljava/lang/String;)V

    :cond_7b
    const-string v0, ".private:isContextOnly"

    invoke-virtual {v3, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_de

    const-string v0, ".private:isContextOnly"

    invoke-virtual {v3, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_de

    const/4 v0, 0x4

    const-string v5, ".private:isContextOnly"

    invoke-virtual {v3, v5}, Landroid/os/Bundle;->remove(Ljava/lang/String;)V

    :goto_91
    const-string v5, ".private:isDeviceOnly"

    invoke-virtual {v3, v5}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_a4

    const-string v5, ".private:isDeviceOnly"

    invoke-virtual {v3, v5, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    const-string v5, ".private:isDeviceOnly"

    invoke-virtual {v3, v5}, Landroid/os/Bundle;->remove(Ljava/lang/String;)V

    :cond_a4
    const-string v5, ".private:action"

    invoke-static {v3}, Lcom/google/android/gms/internal/zznj;->zzj(Landroid/os/Bundle;)Lcom/google/android/gms/internal/zzvw$zzc;

    move-result-object v3

    invoke-static {v5, v3}, Lcom/google/android/gms/internal/zznj;->zza(Ljava/lang/String;Lcom/google/android/gms/internal/zzvw$zzc;)Lcom/google/android/gms/appdatasearch/DocumentSection;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/google/android/gms/appdatasearch/DocumentContents$zza;->zza(Lcom/google/android/gms/appdatasearch/DocumentSection;)Lcom/google/android/gms/appdatasearch/DocumentContents$zza;

    new-instance v3, Lcom/google/android/gms/appdatasearch/UsageInfo$zza;

    invoke-direct {v3}, Lcom/google/android/gms/appdatasearch/UsageInfo$zza;-><init>()V

    invoke-static {p3, v4}, Lcom/google/android/gms/appdatasearch/UsageInfo;->zza(Ljava/lang/String;Landroid/content/Intent;)Lcom/google/android/gms/appdatasearch/DocumentId;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/google/android/gms/appdatasearch/UsageInfo$zza;->zza(Lcom/google/android/gms/appdatasearch/DocumentId;)Lcom/google/android/gms/appdatasearch/UsageInfo$zza;

    move-result-object v3

    invoke-virtual {v3, p1, p2}, Lcom/google/android/gms/appdatasearch/UsageInfo$zza;->zzaa(J)Lcom/google/android/gms/appdatasearch/UsageInfo$zza;

    move-result-object v3

    invoke-virtual {v3, v0}, Lcom/google/android/gms/appdatasearch/UsageInfo$zza;->zzcq(I)Lcom/google/android/gms/appdatasearch/UsageInfo$zza;

    move-result-object v0

    invoke-virtual {v1}, Lcom/google/android/gms/appdatasearch/DocumentContents$zza;->zzaho()Lcom/google/android/gms/appdatasearch/DocumentContents;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/appdatasearch/UsageInfo$zza;->zza(Lcom/google/android/gms/appdatasearch/DocumentContents;)Lcom/google/android/gms/appdatasearch/UsageInfo$zza;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/google/android/gms/appdatasearch/UsageInfo$zza;->zzbb(Z)Lcom/google/android/gms/appdatasearch/UsageInfo$zza;

    move-result-object v0

    invoke-virtual {v0, p4}, Lcom/google/android/gms/appdatasearch/UsageInfo$zza;->zzcr(I)Lcom/google/android/gms/appdatasearch/UsageInfo$zza;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/appdatasearch/UsageInfo$zza;->zzahs()Lcom/google/android/gms/appdatasearch/UsageInfo;

    move-result-object v0

    return-object v0

    :cond_db
    move-object v0, v1

    goto/16 :goto_26

    :cond_de
    move v0, v2

    goto :goto_91
.end method

.method private static zzb(Ljava/lang/String;Landroid/os/Bundle;)Lcom/google/android/gms/internal/zzvw$zzb;
    .registers 5

    new-instance v0, Lcom/google/android/gms/internal/zzvw$zzb;

    invoke-direct {v0}, Lcom/google/android/gms/internal/zzvw$zzb;-><init>()V

    iput-object p0, v0, Lcom/google/android/gms/internal/zzvw$zzb;->name:Ljava/lang/String;

    new-instance v1, Lcom/google/android/gms/internal/zzvw$zzd;

    invoke-direct {v1}, Lcom/google/android/gms/internal/zzvw$zzd;-><init>()V

    iput-object v1, v0, Lcom/google/android/gms/internal/zzvw$zzb;->ahG:Lcom/google/android/gms/internal/zzvw$zzd;

    iget-object v1, v0, Lcom/google/android/gms/internal/zzvw$zzb;->ahG:Lcom/google/android/gms/internal/zzvw$zzd;

    invoke-static {p1}, Lcom/google/android/gms/internal/zznj;->zzj(Landroid/os/Bundle;)Lcom/google/android/gms/internal/zzvw$zzc;

    move-result-object v2

    iput-object v2, v1, Lcom/google/android/gms/internal/zzvw$zzd;->ahL:Lcom/google/android/gms/internal/zzvw$zzc;

    return-object v0
.end method

.method private static zzh(Ljava/lang/String;Z)Lcom/google/android/gms/internal/zzvw$zzb;
    .registers 4

    new-instance v0, Lcom/google/android/gms/internal/zzvw$zzb;

    invoke-direct {v0}, Lcom/google/android/gms/internal/zzvw$zzb;-><init>()V

    iput-object p0, v0, Lcom/google/android/gms/internal/zzvw$zzb;->name:Ljava/lang/String;

    new-instance v1, Lcom/google/android/gms/internal/zzvw$zzd;

    invoke-direct {v1}, Lcom/google/android/gms/internal/zzvw$zzd;-><init>()V

    iput-object v1, v0, Lcom/google/android/gms/internal/zzvw$zzb;->ahG:Lcom/google/android/gms/internal/zzvw$zzd;

    iget-object v1, v0, Lcom/google/android/gms/internal/zzvw$zzb;->ahG:Lcom/google/android/gms/internal/zzvw$zzd;

    iput-boolean p1, v1, Lcom/google/android/gms/internal/zzvw$zzd;->ahI:Z

    return-object v0
.end method

.method public static zzj(Landroid/os/Bundle;)Lcom/google/android/gms/internal/zzvw$zzc;
    .registers 9

    const/4 v3, 0x0

    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {p0}, Landroid/os/Bundle;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_e
    :goto_e
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_a6

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {p0, v0}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    instance-of v2, v1, Ljava/lang/String;

    if-eqz v2, :cond_2c

    check-cast v1, Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/zznj;->zzu(Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/gms/internal/zzvw$zzb;

    move-result-object v0

    invoke-interface {v4, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_e

    :cond_2c
    instance-of v2, v1, Landroid/os/Bundle;

    if-eqz v2, :cond_3a

    check-cast v1, Landroid/os/Bundle;

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/zznj;->zzb(Ljava/lang/String;Landroid/os/Bundle;)Lcom/google/android/gms/internal/zzvw$zzb;

    move-result-object v0

    invoke-interface {v4, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_e

    :cond_3a
    instance-of v2, v1, [Ljava/lang/String;

    if-eqz v2, :cond_53

    check-cast v1, [Ljava/lang/String;

    array-length v6, v1

    move v2, v3

    :goto_42
    if-ge v2, v6, :cond_e

    aget-object v7, v1, v2

    if-nez v7, :cond_4b

    :goto_48
    add-int/lit8 v2, v2, 0x1

    goto :goto_42

    :cond_4b
    invoke-static {v0, v7}, Lcom/google/android/gms/internal/zznj;->zzu(Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/gms/internal/zzvw$zzb;

    move-result-object v7

    invoke-interface {v4, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_48

    :cond_53
    instance-of v2, v1, [Landroid/os/Bundle;

    if-eqz v2, :cond_6c

    check-cast v1, [Landroid/os/Bundle;

    array-length v6, v1

    move v2, v3

    :goto_5b
    if-ge v2, v6, :cond_e

    aget-object v7, v1, v2

    if-nez v7, :cond_64

    :goto_61
    add-int/lit8 v2, v2, 0x1

    goto :goto_5b

    :cond_64
    invoke-static {v0, v7}, Lcom/google/android/gms/internal/zznj;->zzb(Ljava/lang/String;Landroid/os/Bundle;)Lcom/google/android/gms/internal/zzvw$zzb;

    move-result-object v7

    invoke-interface {v4, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_61

    :cond_6c
    instance-of v2, v1, Ljava/lang/Boolean;

    if-eqz v2, :cond_7e

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/zznj;->zzh(Ljava/lang/String;Z)Lcom/google/android/gms/internal/zzvw$zzb;

    move-result-object v0

    invoke-interface {v4, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_e

    :cond_7e
    const-string v0, "SearchIndex"

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v6

    add-int/lit8 v6, v6, 0x13

    invoke-direct {v2, v6}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v6, "Unsupported value: "

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_e

    :cond_a6
    new-instance v1, Lcom/google/android/gms/internal/zzvw$zzc;

    invoke-direct {v1}, Lcom/google/android/gms/internal/zzvw$zzc;-><init>()V

    const-string v0, "type"

    invoke-virtual {p0, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_bb

    const-string v0, "type"

    invoke-virtual {p0, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Lcom/google/android/gms/internal/zzvw$zzc;->type:Ljava/lang/String;

    :cond_bb
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v0

    new-array v0, v0, [Lcom/google/android/gms/internal/zzvw$zzb;

    invoke-interface {v4, v0}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/android/gms/internal/zzvw$zzb;

    iput-object v0, v1, Lcom/google/android/gms/internal/zzvw$zzc;->ahH:[Lcom/google/android/gms/internal/zzvw$zzb;

    return-object v1
.end method

.method private static zzu(Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/gms/internal/zzvw$zzb;
    .registers 4

    new-instance v0, Lcom/google/android/gms/internal/zzvw$zzb;

    invoke-direct {v0}, Lcom/google/android/gms/internal/zzvw$zzb;-><init>()V

    iput-object p0, v0, Lcom/google/android/gms/internal/zzvw$zzb;->name:Ljava/lang/String;

    new-instance v1, Lcom/google/android/gms/internal/zzvw$zzd;

    invoke-direct {v1}, Lcom/google/android/gms/internal/zzvw$zzd;-><init>()V

    iput-object v1, v0, Lcom/google/android/gms/internal/zzvw$zzb;->ahG:Lcom/google/android/gms/internal/zzvw$zzd;

    iget-object v1, v0, Lcom/google/android/gms/internal/zzvw$zzb;->ahG:Lcom/google/android/gms/internal/zzvw$zzd;

    iput-object p1, v1, Lcom/google/android/gms/internal/zzvw$zzd;->Fe:Ljava/lang/String;

    return-object v0
.end method

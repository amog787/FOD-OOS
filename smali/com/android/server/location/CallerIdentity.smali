.class public final Lcom/android/server/location/CallerIdentity;
.super Ljava/lang/Object;
.source "CallerIdentity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/location/CallerIdentity$PermissionLevel;
    }
.end annotation


# static fields
.field public static final PERMISSION_COARSE:I = 0x1

.field public static final PERMISSION_FINE:I = 0x2

.field public static final PERMISSION_NONE:I


# instance fields
.field public final featureId:Ljava/lang/String;

.field public final listenerId:Ljava/lang/String;

.field public final packageName:Ljava/lang/String;

.field public final permissionLevel:I

.field public final pid:I

.field public final uid:I

.field public final userId:I


# direct methods
.method public constructor <init>(IIILjava/lang/String;Ljava/lang/String;I)V
    .locals 8
    .param p1, "uid"    # I
    .param p2, "pid"    # I
    .param p3, "userId"    # I
    .param p4, "packageName"    # Ljava/lang/String;
    .param p5, "featureId"    # Ljava/lang/String;
    .param p6, "permissionLevel"    # I

    .line 194
    const/4 v6, 0x0

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move-object v4, p4

    move-object v5, p5

    move v7, p6

    invoke-direct/range {v0 .. v7}, Lcom/android/server/location/CallerIdentity;-><init>(IIILjava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    .line 195
    return-void
.end method

.method private constructor <init>(IIILjava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V
    .locals 3
    .param p1, "uid"    # I
    .param p2, "pid"    # I
    .param p3, "userId"    # I
    .param p4, "packageName"    # Ljava/lang/String;
    .param p5, "featureId"    # Ljava/lang/String;
    .param p6, "listenerId"    # Ljava/lang/String;
    .param p7, "permissionLevel"    # I

    .line 199
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 200
    iput p1, p0, Lcom/android/server/location/CallerIdentity;->uid:I

    .line 201
    iput p2, p0, Lcom/android/server/location/CallerIdentity;->pid:I

    .line 202
    iput p3, p0, Lcom/android/server/location/CallerIdentity;->userId:I

    .line 203
    invoke-static {p4}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-object v0, p4

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lcom/android/server/location/CallerIdentity;->packageName:Ljava/lang/String;

    .line 204
    iput-object p5, p0, Lcom/android/server/location/CallerIdentity;->featureId:Ljava/lang/String;

    .line 205
    iput-object p6, p0, Lcom/android/server/location/CallerIdentity;->listenerId:Ljava/lang/String;

    .line 206
    const/4 v0, 0x0

    const/4 v1, 0x2

    const-string/jumbo v2, "permissionLevel"

    invoke-static {p7, v0, v1, v2}, Lcom/android/internal/util/Preconditions;->checkArgumentInRange(IIILjava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/android/server/location/CallerIdentity;->permissionLevel:I

    .line 208
    return-void
.end method

.method public static asAppOp(I)I
    .locals 2
    .param p0, "permissionLevel"    # I

    .line 69
    const/4 v0, 0x1

    if-eq p0, v0, :cond_1

    const/4 v1, 0x2

    if-ne p0, v1, :cond_0

    .line 73
    return v0

    .line 75
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    .line 71
    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method public static asPermission(I)Ljava/lang/String;
    .locals 1
    .param p0, "permissionLevel"    # I

    .line 55
    const/4 v0, 0x1

    if-eq p0, v0, :cond_1

    const/4 v0, 0x2

    if-ne p0, v0, :cond_0

    .line 59
    const-string v0, "android.permission.ACCESS_FINE_LOCATION"

    return-object v0

    .line 61
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    .line 57
    :cond_1
    const-string v0, "android.permission.ACCESS_COARSE_LOCATION"

    return-object v0
.end method

.method public static checkCallingOrSelfLocationPermission(Landroid/content/Context;)Z
    .locals 1
    .param p0, "context"    # Landroid/content/Context;

    .line 139
    invoke-static {p0}, Lcom/android/server/location/CallerIdentity;->getBinderPermissionLevel(Landroid/content/Context;)I

    move-result v0

    invoke-static {v0}, Lcom/android/server/location/CallerIdentity;->checkLocationPermission(I)Z

    move-result v0

    return v0
.end method

.method private static checkLocationPermission(I)Z
    .locals 1
    .param p0, "permissionLevel"    # I

    .line 152
    const/4 v0, 0x1

    if-lt p0, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static enforceCallingOrSelfLocationPermission(Landroid/content/Context;)V
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .line 132
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    invoke-static {p0}, Lcom/android/server/location/CallerIdentity;->getBinderPermissionLevel(Landroid/content/Context;)I

    move-result v1

    invoke-static {v0, v1}, Lcom/android/server/location/CallerIdentity;->enforceLocationPermission(II)V

    .line 133
    return-void
.end method

.method private static enforceLocationPermission(II)V
    .locals 3
    .param p0, "uid"    # I
    .param p1, "permissionLevel"    # I

    .line 143
    invoke-static {p1}, Lcom/android/server/location/CallerIdentity;->checkLocationPermission(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 144
    return-void

    .line 147
    :cond_0
    new-instance v0, Ljava/lang/SecurityException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "uid "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " does not have "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "android.permission.ACCESS_COARSE_LOCATION"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " or "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "android.permission.ACCESS_FINE_LOCATION"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static fromBinder(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Lcom/android/server/location/CallerIdentity;
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "featureId"    # Ljava/lang/String;

    .line 86
    const/4 v0, 0x0

    invoke-static {p0, p1, p2, v0}, Lcom/android/server/location/CallerIdentity;->fromBinder(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/android/server/location/CallerIdentity;

    move-result-object v0

    return-object v0
.end method

.method public static fromBinder(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/android/server/location/CallerIdentity;
    .locals 4
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "featureId"    # Ljava/lang/String;
    .param p3, "listenerId"    # Ljava/lang/String;

    .line 96
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    .line 97
    .local v0, "uid":I
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/pm/PackageManager;->getPackagesForUid(I)[Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, p1}, Lcom/android/internal/util/ArrayUtils;->contains([Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 101
    invoke-static {p0, p1, p2, p3}, Lcom/android/server/location/CallerIdentity;->fromBinderUnsafe(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/android/server/location/CallerIdentity;

    move-result-object v1

    return-object v1

    .line 98
    :cond_0
    new-instance v1, Ljava/lang/SecurityException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "invalid package \""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "\" for uid "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public static fromBinderUnsafe(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Lcom/android/server/location/CallerIdentity;
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "featureId"    # Ljava/lang/String;

    .line 112
    const/4 v0, 0x0

    invoke-static {p0, p1, p2, v0}, Lcom/android/server/location/CallerIdentity;->fromBinderUnsafe(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/android/server/location/CallerIdentity;

    move-result-object v0

    return-object v0
.end method

.method public static fromBinderUnsafe(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/android/server/location/CallerIdentity;
    .locals 9
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "featureId"    # Ljava/lang/String;
    .param p3, "listenerId"    # Ljava/lang/String;

    .line 123
    new-instance v8, Lcom/android/server/location/CallerIdentity;

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v2

    .line 124
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v3

    .line 125
    invoke-static {p0}, Lcom/android/server/location/CallerIdentity;->getBinderPermissionLevel(Landroid/content/Context;)I

    move-result v7

    move-object v0, v8

    move-object v4, p1

    move-object v5, p2

    move-object v6, p3

    invoke-direct/range {v0 .. v7}, Lcom/android/server/location/CallerIdentity;-><init>(IIILjava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    .line 123
    return-object v8
.end method

.method private static getBinderPermissionLevel(Landroid/content/Context;)I
    .locals 1
    .param p0, "context"    # Landroid/content/Context;

    .line 156
    const-string v0, "android.permission.ACCESS_FINE_LOCATION"

    invoke-virtual {p0, v0}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_0

    .line 157
    const/4 v0, 0x2

    return v0

    .line 159
    :cond_0
    const-string v0, "android.permission.ACCESS_COARSE_LOCATION"

    invoke-virtual {p0, v0}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_1

    .line 160
    const/4 v0, 0x1

    return v0

    .line 163
    :cond_1
    const/4 v0, 0x0

    return v0
.end method


# virtual methods
.method public enforceLocationPermission()V
    .locals 2

    .line 214
    iget v0, p0, Lcom/android/server/location/CallerIdentity;->uid:I

    iget v1, p0, Lcom/android/server/location/CallerIdentity;->permissionLevel:I

    invoke-static {v0, v1}, Lcom/android/server/location/CallerIdentity;->enforceLocationPermission(II)V

    .line 215
    return-void
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 5
    .param p1, "o"    # Ljava/lang/Object;

    .line 240
    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    .line 241
    return v0

    .line 243
    :cond_0
    instance-of v1, p1, Lcom/android/server/location/CallerIdentity;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    .line 244
    return v2

    .line 246
    :cond_1
    move-object v1, p1

    check-cast v1, Lcom/android/server/location/CallerIdentity;

    .line 247
    .local v1, "that":Lcom/android/server/location/CallerIdentity;
    iget v3, p0, Lcom/android/server/location/CallerIdentity;->uid:I

    iget v4, v1, Lcom/android/server/location/CallerIdentity;->uid:I

    if-ne v3, v4, :cond_2

    iget v3, p0, Lcom/android/server/location/CallerIdentity;->pid:I

    iget v4, v1, Lcom/android/server/location/CallerIdentity;->pid:I

    if-ne v3, v4, :cond_2

    iget-object v3, p0, Lcom/android/server/location/CallerIdentity;->packageName:Ljava/lang/String;

    iget-object v4, v1, Lcom/android/server/location/CallerIdentity;->packageName:Ljava/lang/String;

    .line 249
    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/android/server/location/CallerIdentity;->featureId:Ljava/lang/String;

    iget-object v4, v1, Lcom/android/server/location/CallerIdentity;->featureId:Ljava/lang/String;

    .line 250
    invoke-static {v3, v4}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/android/server/location/CallerIdentity;->listenerId:Ljava/lang/String;

    iget-object v4, v1, Lcom/android/server/location/CallerIdentity;->listenerId:Ljava/lang/String;

    .line 251
    invoke-static {v3, v4}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    goto :goto_0

    :cond_2
    move v0, v2

    .line 247
    :goto_0
    return v0
.end method

.method public hashCode()I
    .locals 3

    .line 256
    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/Object;

    iget v1, p0, Lcom/android/server/location/CallerIdentity;->uid:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget v1, p0, Lcom/android/server/location/CallerIdentity;->pid:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/android/server/location/CallerIdentity;->packageName:Ljava/lang/String;

    const/4 v2, 0x2

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/android/server/location/CallerIdentity;->featureId:Ljava/lang/String;

    const/4 v2, 0x3

    aput-object v1, v0, v2

    invoke-static {v0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .line 219
    iget-object v0, p0, Lcom/android/server/location/CallerIdentity;->packageName:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    add-int/lit8 v0, v0, 0xa

    .line 220
    .local v0, "length":I
    iget-object v1, p0, Lcom/android/server/location/CallerIdentity;->featureId:Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 221
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    add-int/2addr v0, v1

    .line 224
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 225
    .local v1, "builder":Ljava/lang/StringBuilder;
    iget v2, p0, Lcom/android/server/location/CallerIdentity;->pid:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/location/CallerIdentity;->packageName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 226
    iget-object v2, p0, Lcom/android/server/location/CallerIdentity;->featureId:Ljava/lang/String;

    if-eqz v2, :cond_2

    .line 227
    const-string v2, "["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 228
    iget-object v2, p0, Lcom/android/server/location/CallerIdentity;->featureId:Ljava/lang/String;

    iget-object v3, p0, Lcom/android/server/location/CallerIdentity;->packageName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 229
    iget-object v2, p0, Lcom/android/server/location/CallerIdentity;->featureId:Ljava/lang/String;

    iget-object v3, p0, Lcom/android/server/location/CallerIdentity;->packageName:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 231
    :cond_1
    iget-object v2, p0, Lcom/android/server/location/CallerIdentity;->featureId:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 233
    :goto_0
    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 235
    :cond_2
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

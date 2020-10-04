.class public Lcom/android/server/ServiceWatcher;
.super Ljava/lang/Object;
.source "ServiceWatcher.java"

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/ServiceWatcher$BlockingBinderRunner;,
        Lcom/android/server/ServiceWatcher$BinderRunner;
    }
.end annotation


# static fields
.field private static final BLOCKING_BINDER_TIMEOUT_MS:J = 0x7530L

.field private static final D:Z = false

.field public static final EXTRA_SERVICE_IS_MULTIUSER:Ljava/lang/String; = "serviceIsMultiuser"

.field public static final EXTRA_SERVICE_VERSION:Ljava/lang/String; = "serviceVersion"

.field private static final TAG:Ljava/lang/String; = "ServiceWatcher"


# instance fields
.field private final mAction:Ljava/lang/String;

.field private volatile mBestComponent:Landroid/content/ComponentName;

.field private mBestService:Landroid/os/IBinder;

.field private volatile mBestUserId:I

.field private volatile mBestVersion:I

.field private final mContext:Landroid/content/Context;

.field private mCurrentUserId:I

.field private final mHandler:Landroid/os/Handler;

.field private final mServicePackageName:Ljava/lang/String;

.field private final mSignatureSets:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/util/HashSet<",
            "Landroid/content/pm/Signature;",
            ">;>;"
        }
    .end annotation
.end field

.field private final mTag:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;IIILandroid/os/Handler;)V
    .locals 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "logTag"    # Ljava/lang/String;
    .param p3, "action"    # Ljava/lang/String;
    .param p4, "overlaySwitchResId"    # I
    .param p5, "defaultServicePackageNameResId"    # I
    .param p6, "initialPackageNamesResId"    # I
    .param p7, "handler"    # Landroid/os/Handler;

    .line 150
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 151
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 153
    .local v0, "resources":Landroid/content/res/Resources;
    iput-object p1, p0, Lcom/android/server/ServiceWatcher;->mContext:Landroid/content/Context;

    .line 154
    iput-object p2, p0, Lcom/android/server/ServiceWatcher;->mTag:Ljava/lang/String;

    .line 155
    iput-object p3, p0, Lcom/android/server/ServiceWatcher;->mAction:Ljava/lang/String;

    .line 157
    invoke-virtual {v0, p4}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v1

    .line 158
    .local v1, "enableOverlay":Z
    const/4 v2, 0x0

    if-eqz v1, :cond_0

    .line 159
    invoke-virtual {v0, p6}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v3

    .line 160
    .local v3, "pkgs":[Ljava/lang/String;
    iput-object v2, p0, Lcom/android/server/ServiceWatcher;->mServicePackageName:Ljava/lang/String;

    .line 161
    invoke-static {p1, v3}, Lcom/android/server/ServiceWatcher;->getSignatureSets(Landroid/content/Context;[Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v4

    iput-object v4, p0, Lcom/android/server/ServiceWatcher;->mSignatureSets:Ljava/util/List;

    .line 163
    .end local v3    # "pkgs":[Ljava/lang/String;
    goto :goto_0

    .line 164
    :cond_0
    invoke-virtual {v0, p5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/android/server/ServiceWatcher;->mServicePackageName:Ljava/lang/String;

    .line 165
    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/String;

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/android/server/ServiceWatcher;->mServicePackageName:Ljava/lang/String;

    aput-object v5, v3, v4

    invoke-static {p1, v3}, Lcom/android/server/ServiceWatcher;->getSignatureSets(Landroid/content/Context;[Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v3

    iput-object v3, p0, Lcom/android/server/ServiceWatcher;->mSignatureSets:Ljava/util/List;

    .line 169
    :goto_0
    iput-object p7, p0, Lcom/android/server/ServiceWatcher;->mHandler:Landroid/os/Handler;

    .line 171
    iput-object v2, p0, Lcom/android/server/ServiceWatcher;->mBestComponent:Landroid/content/ComponentName;

    .line 172
    const/high16 v3, -0x80000000

    iput v3, p0, Lcom/android/server/ServiceWatcher;->mBestVersion:I

    .line 173
    const/16 v3, -0x2710

    iput v3, p0, Lcom/android/server/ServiceWatcher;->mBestUserId:I

    .line 175
    iput-object v2, p0, Lcom/android/server/ServiceWatcher;->mBestService:Landroid/os/IBinder;

    .line 176
    return-void
.end method

.method static synthetic access$000(Lcom/android/server/ServiceWatcher;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/ServiceWatcher;
    .param p1, "x1"    # Z

    .line 64
    invoke-direct {p0, p1}, Lcom/android/server/ServiceWatcher;->bindBestPackage(Z)V

    return-void
.end method

.method static synthetic access$100(Lcom/android/server/ServiceWatcher;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/server/ServiceWatcher;

    .line 64
    iget v0, p0, Lcom/android/server/ServiceWatcher;->mCurrentUserId:I

    return v0
.end method

.method static synthetic access$102(Lcom/android/server/ServiceWatcher;I)I
    .locals 0
    .param p0, "x0"    # Lcom/android/server/ServiceWatcher;
    .param p1, "x1"    # I

    .line 64
    iput p1, p0, Lcom/android/server/ServiceWatcher;->mCurrentUserId:I

    return p1
.end method

.method private bind(Landroid/content/ComponentName;II)V
    .locals 4
    .param p1, "component"    # Landroid/content/ComponentName;
    .param p2, "version"    # I
    .param p3, "userId"    # I

    .line 340
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/ServiceWatcher;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-static {v0}, Lcom/android/internal/util/Preconditions;->checkState(Z)V

    .line 342
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/android/server/ServiceWatcher;->mAction:Ljava/lang/String;

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 343
    .local v0, "intent":Landroid/content/Intent;
    invoke-virtual {v0, p1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 345
    iput-object p1, p0, Lcom/android/server/ServiceWatcher;->mBestComponent:Landroid/content/ComponentName;

    .line 346
    iput p2, p0, Lcom/android/server/ServiceWatcher;->mBestVersion:I

    .line 347
    iput p3, p0, Lcom/android/server/ServiceWatcher;->mBestUserId:I

    .line 350
    iget-object v1, p0, Lcom/android/server/ServiceWatcher;->mContext:Landroid/content/Context;

    const v2, 0x40000005    # 2.0000012f

    .line 352
    invoke-static {p3}, Landroid/os/UserHandle;->of(I)Landroid/os/UserHandle;

    move-result-object v3

    .line 350
    invoke-virtual {v1, v0, p0, v2, v3}, Landroid/content/Context;->bindServiceAsUser(Landroid/content/Intent;Landroid/content/ServiceConnection;ILandroid/os/UserHandle;)Z

    .line 353
    return-void
.end method

.method private bindBestPackage(Z)V
    .locals 17
    .param p1, "forceRebind"    # Z

    .line 263
    move-object/from16 v1, p0

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    iget-object v2, v1, Lcom/android/server/ServiceWatcher;->mHandler:Landroid/os/Handler;

    invoke-virtual {v2}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v2

    const/4 v4, 0x0

    if-ne v0, v2, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    move v0, v4

    :goto_0
    invoke-static {v0}, Lcom/android/internal/util/Preconditions;->checkState(Z)V

    .line 265
    new-instance v0, Landroid/content/Intent;

    iget-object v2, v1, Lcom/android/server/ServiceWatcher;->mAction:Ljava/lang/String;

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    move-object v2, v0

    .line 266
    .local v2, "intent":Landroid/content/Intent;
    iget-object v0, v1, Lcom/android/server/ServiceWatcher;->mServicePackageName:Ljava/lang/String;

    if-eqz v0, :cond_1

    .line 267
    invoke-virtual {v2, v0}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 270
    :cond_1
    iget-object v0, v1, Lcom/android/server/ServiceWatcher;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const v5, 0x10000080

    iget v6, v1, Lcom/android/server/ServiceWatcher;->mCurrentUserId:I

    invoke-virtual {v0, v2, v5, v6}, Landroid/content/pm/PackageManager;->queryIntentServicesAsUser(Landroid/content/Intent;II)Ljava/util/List;

    move-result-object v0

    .line 273
    .local v0, "rInfos":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    if-nez v0, :cond_2

    .line 274
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    move-object v5, v0

    goto :goto_1

    .line 273
    :cond_2
    move-object v5, v0

    .line 277
    .end local v0    # "rInfos":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    .local v5, "rInfos":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    :goto_1
    const/4 v0, 0x0

    .line 278
    .local v0, "bestComponent":Landroid/content/ComponentName;
    const/high16 v6, -0x80000000

    .line 279
    .local v6, "bestVersion":I
    const/4 v7, 0x0

    .line 281
    .local v7, "bestIsMultiuser":Z
    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v8

    move v9, v6

    move-object v6, v0

    .end local v0    # "bestComponent":Landroid/content/ComponentName;
    .local v6, "bestComponent":Landroid/content/ComponentName;
    .local v9, "bestVersion":I
    :goto_2
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    move-object v10, v0

    check-cast v10, Landroid/content/pm/ResolveInfo;

    .line 282
    .local v10, "rInfo":Landroid/content/pm/ResolveInfo;
    iget-object v0, v10, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    invoke-virtual {v0}, Landroid/content/pm/ServiceInfo;->getComponentName()Landroid/content/ComponentName;

    move-result-object v11

    .line 283
    .local v11, "component":Landroid/content/ComponentName;
    invoke-virtual {v11}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v12

    .line 287
    .local v12, "packageName":Ljava/lang/String;
    :try_start_0
    iget-object v0, v1, Lcom/android/server/ServiceWatcher;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const v13, 0x10000040

    invoke-virtual {v0, v12, v13}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v0

    .line 290
    .local v0, "pInfo":Landroid/content/pm/PackageInfo;
    iget-object v13, v0, Landroid/content/pm/PackageInfo;->signatures:[Landroid/content/pm/Signature;

    iget-object v14, v1, Lcom/android/server/ServiceWatcher;->mSignatureSets:Ljava/util/List;

    invoke-static {v13, v14}, Lcom/android/server/ServiceWatcher;->isSignatureMatch([Landroid/content/pm/Signature;Ljava/util/List;)Z

    move-result v13

    if-nez v13, :cond_3

    .line 291
    iget-object v13, v1, Lcom/android/server/ServiceWatcher;->mTag:Ljava/lang/String;

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v14, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v15, " resolves service "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v15, v1, Lcom/android/server/ServiceWatcher;->mAction:Ljava/lang/String;

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v15, ", but has wrong signature, ignoring"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 293
    goto :goto_2

    .line 298
    .end local v0    # "pInfo":Landroid/content/pm/PackageInfo;
    :cond_3
    nop

    .line 301
    iget-object v0, v10, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    iget-object v0, v0, Landroid/content/pm/ServiceInfo;->metaData:Landroid/os/Bundle;

    .line 302
    .local v0, "metadata":Landroid/os/Bundle;
    const/high16 v13, -0x80000000

    .line 303
    .local v13, "version":I
    const/4 v14, 0x0

    .line 304
    .local v14, "isMultiuser":Z
    if-eqz v0, :cond_4

    .line 305
    const/high16 v15, -0x80000000

    const-string/jumbo v3, "serviceVersion"

    invoke-virtual {v0, v3, v15}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v13

    .line 306
    const-string/jumbo v3, "serviceIsMultiuser"

    invoke-virtual {v0, v3, v4}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v14

    .line 309
    :cond_4
    if-le v13, v9, :cond_5

    .line 310
    move-object v3, v11

    .line 311
    .end local v6    # "bestComponent":Landroid/content/ComponentName;
    .local v3, "bestComponent":Landroid/content/ComponentName;
    move v6, v13

    .line 312
    .end local v9    # "bestVersion":I
    .local v6, "bestVersion":I
    move v7, v14

    move v9, v6

    move-object v6, v3

    .line 314
    .end local v0    # "metadata":Landroid/os/Bundle;
    .end local v3    # "bestComponent":Landroid/content/ComponentName;
    .end local v10    # "rInfo":Landroid/content/pm/ResolveInfo;
    .end local v11    # "component":Landroid/content/ComponentName;
    .end local v12    # "packageName":Ljava/lang/String;
    .end local v13    # "version":I
    .end local v14    # "isMultiuser":Z
    .local v6, "bestComponent":Landroid/content/ComponentName;
    .restart local v9    # "bestVersion":I
    :cond_5
    goto :goto_2

    .line 295
    .restart local v10    # "rInfo":Landroid/content/pm/ResolveInfo;
    .restart local v11    # "component":Landroid/content/ComponentName;
    .restart local v12    # "packageName":Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 296
    .local v0, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    iget-object v3, v1, Lcom/android/server/ServiceWatcher;->mTag:Ljava/lang/String;

    invoke-static {v3, v0}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 297
    goto :goto_2

    .line 324
    .end local v0    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    .end local v10    # "rInfo":Landroid/content/pm/ResolveInfo;
    .end local v11    # "component":Landroid/content/ComponentName;
    .end local v12    # "packageName":Ljava/lang/String;
    :cond_6
    if-nez v6, :cond_7

    .line 325
    iget-object v0, v1, Lcom/android/server/ServiceWatcher;->mTag:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Odd, no component found for service "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, v1, Lcom/android/server/ServiceWatcher;->mAction:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 326
    invoke-direct/range {p0 .. p0}, Lcom/android/server/ServiceWatcher;->unbind()V

    .line 327
    return-void

    .line 330
    :cond_7
    if-eqz v7, :cond_8

    move v0, v4

    goto :goto_3

    :cond_8
    iget v0, v1, Lcom/android/server/ServiceWatcher;->mCurrentUserId:I

    .line 331
    .local v0, "userId":I
    :goto_3
    iget-object v3, v1, Lcom/android/server/ServiceWatcher;->mBestComponent:Landroid/content/ComponentName;

    invoke-static {v6, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_9

    iget v3, v1, Lcom/android/server/ServiceWatcher;->mBestVersion:I

    if-ne v9, v3, :cond_9

    iget v3, v1, Lcom/android/server/ServiceWatcher;->mBestUserId:I

    if-ne v0, v3, :cond_9

    const/16 v16, 0x1

    goto :goto_4

    :cond_9
    move/from16 v16, v4

    :goto_4
    move/from16 v3, v16

    .line 333
    .local v3, "alreadyBound":Z
    if-nez p1, :cond_a

    if-nez v3, :cond_b

    .line 334
    :cond_a
    invoke-direct/range {p0 .. p0}, Lcom/android/server/ServiceWatcher;->unbind()V

    .line 335
    invoke-direct {v1, v6, v9, v0}, Lcom/android/server/ServiceWatcher;->bind(Landroid/content/ComponentName;II)V

    .line 337
    :cond_b
    return-void
.end method

.method public static varargs getSignatureSets(Landroid/content/Context;[Ljava/lang/String;)Ljava/util/ArrayList;
    .locals 8
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "packageNames"    # [Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "[",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/ArrayList<",
            "Ljava/util/HashSet<",
            "Landroid/content/pm/Signature;",
            ">;>;"
        }
    .end annotation

    .line 94
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    .line 96
    .local v0, "pm":Landroid/content/pm/PackageManager;
    new-instance v1, Ljava/util/ArrayList;

    array-length v2, p1

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    .line 97
    .local v1, "signatureSets":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/util/HashSet<Landroid/content/pm/Signature;>;>;"
    array-length v2, p1

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_0

    aget-object v4, p1, v3

    .line 99
    .local v4, "packageName":Ljava/lang/String;
    const v5, 0x100040

    :try_start_0
    invoke-virtual {v0, v4, v5}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v5

    iget-object v5, v5, Landroid/content/pm/PackageInfo;->signatures:[Landroid/content/pm/Signature;

    .line 103
    .local v5, "signatures":[Landroid/content/pm/Signature;
    new-instance v6, Ljava/util/HashSet;

    invoke-direct {v6}, Ljava/util/HashSet;-><init>()V

    .line 104
    .local v6, "set":Ljava/util/HashSet;, "Ljava/util/HashSet<Landroid/content/pm/Signature;>;"
    invoke-static {v6, v5}, Ljava/util/Collections;->addAll(Ljava/util/Collection;[Ljava/lang/Object;)Z

    .line 105
    invoke-virtual {v1, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 108
    nop

    .end local v5    # "signatures":[Landroid/content/pm/Signature;
    .end local v6    # "set":Ljava/util/HashSet;, "Ljava/util/HashSet<Landroid/content/pm/Signature;>;"
    goto :goto_1

    .line 106
    :catch_0
    move-exception v5

    .line 107
    .local v5, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, " not found"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    const-string v7, "ServiceWatcher"

    invoke-static {v7, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 97
    .end local v4    # "packageName":Ljava/lang/String;
    .end local v5    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 110
    :cond_0
    return-object v1
.end method

.method private isServiceMissing()Z
    .locals 4

    .line 256
    iget-object v0, p0, Lcom/android/server/ServiceWatcher;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    new-instance v1, Landroid/content/Intent;

    iget-object v2, p0, Lcom/android/server/ServiceWatcher;->mAction:Ljava/lang/String;

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/high16 v2, 0xc0000

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/pm/PackageManager;->queryIntentServicesAsUser(Landroid/content/Intent;II)Ljava/util/List;

    move-result-object v0

    .line 259
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    .line 256
    return v0
.end method

.method public static isSignatureMatch([Landroid/content/pm/Signature;Ljava/util/List;)Z
    .locals 5
    .param p0, "signatures"    # [Landroid/content/pm/Signature;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Landroid/content/pm/Signature;",
            "Ljava/util/List<",
            "Ljava/util/HashSet<",
            "Landroid/content/pm/Signature;",
            ">;>;)Z"
        }
    .end annotation

    .line 116
    .local p1, "sigSets":Ljava/util/List;, "Ljava/util/List<Ljava/util/HashSet<Landroid/content/pm/Signature;>;>;"
    const/4 v0, 0x0

    if-nez p0, :cond_0

    return v0

    .line 119
    :cond_0
    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    .line 120
    .local v1, "inputSet":Ljava/util/HashSet;, "Ljava/util/HashSet<Landroid/content/pm/Signature;>;"
    invoke-static {v1, p0}, Ljava/util/Collections;->addAll(Ljava/util/Collection;[Ljava/lang/Object;)Z

    .line 123
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/HashSet;

    .line 124
    .local v3, "referenceSet":Ljava/util/HashSet;, "Ljava/util/HashSet<Landroid/content/pm/Signature;>;"
    invoke-virtual {v3, v1}, Ljava/util/HashSet;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 125
    const/4 v0, 0x1

    return v0

    .line 127
    .end local v3    # "referenceSet":Ljava/util/HashSet;, "Ljava/util/HashSet<Landroid/content/pm/Signature;>;"
    :cond_1
    goto :goto_0

    .line 128
    :cond_2
    return v0
.end method

.method private runOnHandler(Ljava/lang/Runnable;)V
    .locals 2
    .param p1, "r"    # Ljava/lang/Runnable;

    .line 451
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/ServiceWatcher;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v1

    if-ne v0, v1, :cond_0

    .line 452
    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    goto :goto_0

    .line 454
    :cond_0
    iget-object v0, p0, Lcom/android/server/ServiceWatcher;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, p1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 456
    :goto_0
    return-void
.end method

.method private runOnHandlerBlocking(Ljava/util/concurrent/Callable;)Ljava/lang/Object;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/concurrent/Callable<",
            "TT;>;)TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;,
            Ljava/util/concurrent/TimeoutException;
        }
    .end annotation

    .line 467
    .local p1, "c":Ljava/util/concurrent/Callable;, "Ljava/util/concurrent/Callable<TT;>;"
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/ServiceWatcher;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v1

    if-ne v0, v1, :cond_0

    .line 469
    :try_start_0
    invoke-interface {p1}, Ljava/util/concurrent/Callable;->call()Ljava/lang/Object;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 470
    :catch_0
    move-exception v0

    .line 472
    .local v0, "e":Ljava/lang/Exception;
    new-instance v1, Ljava/lang/IllegalStateException;

    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    .line 475
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_0
    new-instance v0, Ljava/util/concurrent/FutureTask;

    invoke-direct {v0, p1}, Ljava/util/concurrent/FutureTask;-><init>(Ljava/util/concurrent/Callable;)V

    .line 476
    .local v0, "task":Ljava/util/concurrent/FutureTask;, "Ljava/util/concurrent/FutureTask<TT;>;"
    iget-object v1, p0, Lcom/android/server/ServiceWatcher;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 485
    const-wide/16 v1, 0x7530

    :try_start_1
    sget-object v3, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v0, v1, v2, v3}, Ljava/util/concurrent/FutureTask;->get(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;

    move-result-object v1
    :try_end_1
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_1 .. :try_end_1} :catch_1

    return-object v1

    .line 487
    :catch_1
    move-exception v1

    .line 489
    .local v1, "e":Ljava/util/concurrent/ExecutionException;
    new-instance v2, Ljava/lang/IllegalStateException;

    invoke-direct {v2, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/Throwable;)V

    throw v2
.end method

.method private unbind()V
    .locals 2

    .line 356
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/ServiceWatcher;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-static {v0}, Lcom/android/internal/util/Preconditions;->checkState(Z)V

    .line 358
    iget-object v0, p0, Lcom/android/server/ServiceWatcher;->mBestComponent:Landroid/content/ComponentName;

    if-eqz v0, :cond_1

    .line 360
    iget-object v0, p0, Lcom/android/server/ServiceWatcher;->mContext:Landroid/content/Context;

    invoke-virtual {v0, p0}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    .line 363
    :cond_1
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/ServiceWatcher;->mBestComponent:Landroid/content/ComponentName;

    .line 364
    const/high16 v0, -0x80000000

    iput v0, p0, Lcom/android/server/ServiceWatcher;->mBestVersion:I

    .line 365
    const/16 v0, -0x2710

    iput v0, p0, Lcom/android/server/ServiceWatcher;->mBestUserId:I

    .line 366
    return-void
.end method


# virtual methods
.method public getCurrentPackageName()Ljava/lang/String;
    .locals 2

    .line 251
    iget-object v0, p0, Lcom/android/server/ServiceWatcher;->mBestComponent:Landroid/content/ComponentName;

    .line 252
    .local v0, "bestComponent":Landroid/content/ComponentName;
    if-nez v0, :cond_0

    const/4 v1, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v1

    :goto_0
    return-object v1
.end method

.method public synthetic lambda$onServiceConnected$3$ServiceWatcher(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 0
    .param p1, "component"    # Landroid/content/ComponentName;
    .param p2, "binder"    # Landroid/os/IBinder;

    .line 430
    iput-object p2, p0, Lcom/android/server/ServiceWatcher;->mBestService:Landroid/os/IBinder;

    .line 431
    invoke-virtual {p0}, Lcom/android/server/ServiceWatcher;->onBind()V

    .line 432
    return-void
.end method

.method public synthetic lambda$onServiceDisconnected$4$ServiceWatcher(Landroid/content/ComponentName;)V
    .locals 1
    .param p1, "component"    # Landroid/content/ComponentName;

    .line 439
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/ServiceWatcher;->mBestService:Landroid/os/IBinder;

    .line 440
    invoke-virtual {p0}, Lcom/android/server/ServiceWatcher;->onUnbind()V

    .line 441
    return-void
.end method

.method public synthetic lambda$runOnBinder$1$ServiceWatcher(Lcom/android/server/ServiceWatcher$BinderRunner;)V
    .locals 3
    .param p1, "runner"    # Lcom/android/server/ServiceWatcher$BinderRunner;

    .line 374
    iget-object v0, p0, Lcom/android/server/ServiceWatcher;->mBestService:Landroid/os/IBinder;

    if-nez v0, :cond_0

    .line 375
    return-void

    .line 379
    :cond_0
    :try_start_0
    invoke-interface {p1, v0}, Lcom/android/server/ServiceWatcher$BinderRunner;->run(Landroid/os/IBinder;)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 385
    :catch_0
    move-exception v0

    goto :goto_1

    .line 380
    :catch_1
    move-exception v0

    .line 383
    .local v0, "e":Ljava/lang/RuntimeException;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "exception while while running "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " on "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/ServiceWatcher;->mBestService:Landroid/os/IBinder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " from "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "ServiceWatcher"

    invoke-static {v2, v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 387
    .end local v0    # "e":Ljava/lang/RuntimeException;
    :goto_0
    nop

    .line 388
    :goto_1
    return-void
.end method

.method public synthetic lambda$runOnBinderBlocking$2$ServiceWatcher(Ljava/lang/Object;Lcom/android/server/ServiceWatcher$BlockingBinderRunner;)Ljava/lang/Object;
    .locals 1
    .param p1, "defaultValue"    # Ljava/lang/Object;
    .param p2, "runner"    # Lcom/android/server/ServiceWatcher$BlockingBinderRunner;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 404
    iget-object v0, p0, Lcom/android/server/ServiceWatcher;->mBestService:Landroid/os/IBinder;

    if-nez v0, :cond_0

    .line 405
    return-object p1

    .line 409
    :cond_0
    :try_start_0
    invoke-interface {p2, v0}, Lcom/android/server/ServiceWatcher$BlockingBinderRunner;->run(Landroid/os/IBinder;)Ljava/lang/Object;

    move-result-object v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 410
    :catch_0
    move-exception v0

    .line 411
    .local v0, "e":Landroid/os/RemoteException;
    return-object p1
.end method

.method public synthetic lambda$start$0$ServiceWatcher()V
    .locals 1

    .line 244
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/server/ServiceWatcher;->bindBestPackage(Z)V

    return-void
.end method

.method protected onBind()V
    .locals 0

    .line 178
    return-void
.end method

.method public final onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 1
    .param p1, "component"    # Landroid/content/ComponentName;
    .param p2, "binder"    # Landroid/os/IBinder;

    .line 428
    new-instance v0, Lcom/android/server/-$$Lambda$ServiceWatcher$uru7j1zD-GiN8rndFZ3KWaTrxYo;

    invoke-direct {v0, p0, p1, p2}, Lcom/android/server/-$$Lambda$ServiceWatcher$uru7j1zD-GiN8rndFZ3KWaTrxYo;-><init>(Lcom/android/server/ServiceWatcher;Landroid/content/ComponentName;Landroid/os/IBinder;)V

    invoke-direct {p0, v0}, Lcom/android/server/ServiceWatcher;->runOnHandler(Ljava/lang/Runnable;)V

    .line 433
    return-void
.end method

.method public final onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 1
    .param p1, "component"    # Landroid/content/ComponentName;

    .line 437
    new-instance v0, Lcom/android/server/-$$Lambda$ServiceWatcher$uCZpuTwrOz-CS9PQS2NY1ZXaU8U;

    invoke-direct {v0, p0, p1}, Lcom/android/server/-$$Lambda$ServiceWatcher$uCZpuTwrOz-CS9PQS2NY1ZXaU8U;-><init>(Lcom/android/server/ServiceWatcher;Landroid/content/ComponentName;)V

    invoke-direct {p0, v0}, Lcom/android/server/ServiceWatcher;->runOnHandler(Ljava/lang/Runnable;)V

    .line 442
    return-void
.end method

.method protected onUnbind()V
    .locals 0

    .line 180
    return-void
.end method

.method public final runOnBinder(Lcom/android/server/ServiceWatcher$BinderRunner;)V
    .locals 1
    .param p1, "runner"    # Lcom/android/server/ServiceWatcher$BinderRunner;

    .line 373
    new-instance v0, Lcom/android/server/-$$Lambda$ServiceWatcher$gVk2fFkq2-aamIua2kIpukAFtf8;

    invoke-direct {v0, p0, p1}, Lcom/android/server/-$$Lambda$ServiceWatcher$gVk2fFkq2-aamIua2kIpukAFtf8;-><init>(Lcom/android/server/ServiceWatcher;Lcom/android/server/ServiceWatcher$BinderRunner;)V

    invoke-direct {p0, v0}, Lcom/android/server/ServiceWatcher;->runOnHandler(Ljava/lang/Runnable;)V

    .line 389
    return-void
.end method

.method public final runOnBinderBlocking(Lcom/android/server/ServiceWatcher$BlockingBinderRunner;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/android/server/ServiceWatcher$BlockingBinderRunner<",
            "TT;>;TT;)TT;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 403
    .local p1, "runner":Lcom/android/server/ServiceWatcher$BlockingBinderRunner;, "Lcom/android/server/ServiceWatcher$BlockingBinderRunner<TT;>;"
    .local p2, "defaultValue":Ljava/lang/Object;, "TT;"
    :try_start_0
    new-instance v0, Lcom/android/server/-$$Lambda$ServiceWatcher$b1z9OeL-1VpQ_8p47qz7nMNUpsE;

    invoke-direct {v0, p0, p2, p1}, Lcom/android/server/-$$Lambda$ServiceWatcher$b1z9OeL-1VpQ_8p47qz7nMNUpsE;-><init>(Lcom/android/server/ServiceWatcher;Ljava/lang/Object;Lcom/android/server/ServiceWatcher$BlockingBinderRunner;)V

    invoke-direct {p0, v0}, Lcom/android/server/ServiceWatcher;->runOnHandlerBlocking(Ljava/util/concurrent/Callable;)Ljava/lang/Object;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/util/concurrent/TimeoutException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 420
    :catch_0
    move-exception v0

    .line 422
    .local v0, "e":Ljava/lang/Exception;
    return-object p2
.end method

.method public final start()Z
    .locals 8

    .line 193
    invoke-direct {p0}, Lcom/android/server/ServiceWatcher;->isServiceMissing()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    return v0

    .line 196
    :cond_0
    iget-object v0, p0, Lcom/android/server/ServiceWatcher;->mServicePackageName:Ljava/lang/String;

    const/4 v1, 0x1

    if-nez v0, :cond_1

    .line 197
    new-instance v0, Lcom/android/server/ServiceWatcher$1;

    invoke-direct {v0, p0}, Lcom/android/server/ServiceWatcher$1;-><init>(Lcom/android/server/ServiceWatcher;)V

    iget-object v2, p0, Lcom/android/server/ServiceWatcher;->mContext:Landroid/content/Context;

    sget-object v3, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    iget-object v4, p0, Lcom/android/server/ServiceWatcher;->mHandler:Landroid/os/Handler;

    .line 218
    invoke-virtual {v0, v2, v3, v1, v4}, Lcom/android/server/ServiceWatcher$1;->register(Landroid/content/Context;Landroid/os/UserHandle;ZLandroid/os/Handler;)V

    .line 222
    :cond_1
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 223
    .local v0, "intentFilter":Landroid/content/IntentFilter;
    const-string v2, "android.intent.action.USER_SWITCHED"

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 224
    const-string v2, "android.intent.action.USER_UNLOCKED"

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 225
    iget-object v2, p0, Lcom/android/server/ServiceWatcher;->mContext:Landroid/content/Context;

    new-instance v3, Lcom/android/server/ServiceWatcher$2;

    invoke-direct {v3, p0}, Lcom/android/server/ServiceWatcher$2;-><init>(Lcom/android/server/ServiceWatcher;)V

    sget-object v4, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    const/4 v6, 0x0

    iget-object v7, p0, Lcom/android/server/ServiceWatcher;->mHandler:Landroid/os/Handler;

    move-object v5, v0

    invoke-virtual/range {v2 .. v7}, Landroid/content/Context;->registerReceiverAsUser(Landroid/content/BroadcastReceiver;Landroid/os/UserHandle;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 242
    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v2

    iput v2, p0, Lcom/android/server/ServiceWatcher;->mCurrentUserId:I

    .line 244
    iget-object v2, p0, Lcom/android/server/ServiceWatcher;->mHandler:Landroid/os/Handler;

    new-instance v3, Lcom/android/server/-$$Lambda$ServiceWatcher$IP3HV4ye72eH3YxzGb9dMfcGWPE;

    invoke-direct {v3, p0}, Lcom/android/server/-$$Lambda$ServiceWatcher$IP3HV4ye72eH3YxzGb9dMfcGWPE;-><init>(Lcom/android/server/ServiceWatcher;)V

    invoke-virtual {v2, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 245
    return v1
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 446
    iget-object v0, p0, Lcom/android/server/ServiceWatcher;->mBestComponent:Landroid/content/ComponentName;

    .line 447
    .local v0, "bestComponent":Landroid/content/ComponentName;
    if-nez v0, :cond_0

    const-string/jumbo v1, "null"

    goto :goto_0

    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Landroid/content/ComponentName;->toShortString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "@"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/android/server/ServiceWatcher;->mBestVersion:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    :goto_0
    return-object v1
.end method

.class final Lcom/android/server/pm/InstantAppRegistry$CookiePersistence;
.super Landroid/os/Handler;
.source "InstantAppRegistry.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/pm/InstantAppRegistry;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "CookiePersistence"
.end annotation


# static fields
.field private static final PERSIST_COOKIE_DELAY_MILLIS:J = 0x3e8L


# instance fields
.field private final mPendingPersistCookies:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Landroid/util/ArrayMap<",
            "Ljava/lang/String;",
            "Lcom/android/internal/os/SomeArgs;",
            ">;>;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/android/server/pm/InstantAppRegistry;


# direct methods
.method public constructor <init>(Lcom/android/server/pm/InstantAppRegistry;Landroid/os/Looper;)V
    .locals 0
    .param p2, "looper"    # Landroid/os/Looper;

    .line 1188
    iput-object p1, p0, Lcom/android/server/pm/InstantAppRegistry$CookiePersistence;->this$0:Lcom/android/server/pm/InstantAppRegistry;

    .line 1189
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 1185
    new-instance p1, Landroid/util/SparseArray;

    invoke-direct {p1}, Landroid/util/SparseArray;-><init>()V

    iput-object p1, p0, Lcom/android/server/pm/InstantAppRegistry$CookiePersistence;->mPendingPersistCookies:Landroid/util/SparseArray;

    .line 1190
    return-void
.end method

.method private addPendingPersistCookieLPw(ILandroid/content/pm/PackageParser$Package;[BLjava/io/File;)V
    .locals 3
    .param p1, "userId"    # I
    .param p2, "pkg"    # Landroid/content/pm/PackageParser$Package;
    .param p3, "cookie"    # [B
    .param p4, "cookieFile"    # Ljava/io/File;

    .line 1238
    iget-object v0, p0, Lcom/android/server/pm/InstantAppRegistry$CookiePersistence;->mPendingPersistCookies:Landroid/util/SparseArray;

    .line 1239
    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/util/ArrayMap;

    .line 1240
    .local v0, "pendingWorkForUser":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Lcom/android/internal/os/SomeArgs;>;"
    if-nez v0, :cond_0

    .line 1241
    new-instance v1, Landroid/util/ArrayMap;

    invoke-direct {v1}, Landroid/util/ArrayMap;-><init>()V

    move-object v0, v1

    .line 1242
    iget-object v1, p0, Lcom/android/server/pm/InstantAppRegistry$CookiePersistence;->mPendingPersistCookies:Landroid/util/SparseArray;

    invoke-virtual {v1, p1, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 1244
    :cond_0
    invoke-static {}, Lcom/android/internal/os/SomeArgs;->obtain()Lcom/android/internal/os/SomeArgs;

    move-result-object v1

    .line 1245
    .local v1, "args":Lcom/android/internal/os/SomeArgs;
    iput-object p3, v1, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    .line 1246
    iput-object p4, v1, Lcom/android/internal/os/SomeArgs;->arg2:Ljava/lang/Object;

    .line 1247
    iget-object v2, p2, Landroid/content/pm/PackageParser$Package;->packageName:Ljava/lang/String;

    invoke-virtual {v0, v2, v1}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1248
    return-void
.end method

.method private removePendingPersistCookieLPr(Landroid/content/pm/PackageParser$Package;I)Lcom/android/internal/os/SomeArgs;
    .locals 3
    .param p1, "pkg"    # Landroid/content/pm/PackageParser$Package;
    .param p2, "userId"    # I

    .line 1252
    iget-object v0, p0, Lcom/android/server/pm/InstantAppRegistry$CookiePersistence;->mPendingPersistCookies:Landroid/util/SparseArray;

    .line 1253
    invoke-virtual {v0, p2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/util/ArrayMap;

    .line 1254
    .local v0, "pendingWorkForUser":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Lcom/android/internal/os/SomeArgs;>;"
    const/4 v1, 0x0

    .line 1255
    .local v1, "state":Lcom/android/internal/os/SomeArgs;
    if-eqz v0, :cond_0

    .line 1256
    iget-object v2, p1, Landroid/content/pm/PackageParser$Package;->packageName:Ljava/lang/String;

    invoke-virtual {v0, v2}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    move-object v1, v2

    check-cast v1, Lcom/android/internal/os/SomeArgs;

    .line 1257
    invoke-virtual {v0}, Landroid/util/ArrayMap;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1258
    iget-object v2, p0, Lcom/android/server/pm/InstantAppRegistry$CookiePersistence;->mPendingPersistCookies:Landroid/util/SparseArray;

    invoke-virtual {v2, p2}, Landroid/util/SparseArray;->remove(I)V

    .line 1261
    :cond_0
    return-object v1
.end method


# virtual methods
.method public cancelPendingPersistLPw(Landroid/content/pm/PackageParser$Package;I)V
    .locals 1
    .param p1, "pkg"    # Landroid/content/pm/PackageParser$Package;
    .param p2, "userId"    # I

    .line 1228
    invoke-virtual {p0, p2, p1}, Lcom/android/server/pm/InstantAppRegistry$CookiePersistence;->removeMessages(ILjava/lang/Object;)V

    .line 1229
    invoke-direct {p0, p1, p2}, Lcom/android/server/pm/InstantAppRegistry$CookiePersistence;->removePendingPersistCookieLPr(Landroid/content/pm/PackageParser$Package;I)Lcom/android/internal/os/SomeArgs;

    move-result-object v0

    .line 1230
    .local v0, "state":Lcom/android/internal/os/SomeArgs;
    if-eqz v0, :cond_0

    .line 1231
    invoke-virtual {v0}, Lcom/android/internal/os/SomeArgs;->recycle()V

    .line 1233
    :cond_0
    return-void
.end method

.method public getPendingPersistCookieLPr(Landroid/content/pm/PackageParser$Package;I)[B
    .locals 3
    .param p1, "pkg"    # Landroid/content/pm/PackageParser$Package;
    .param p2, "userId"    # I

    .line 1215
    iget-object v0, p0, Lcom/android/server/pm/InstantAppRegistry$CookiePersistence;->mPendingPersistCookies:Landroid/util/SparseArray;

    .line 1216
    invoke-virtual {v0, p2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/util/ArrayMap;

    .line 1217
    .local v0, "pendingWorkForUser":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Lcom/android/internal/os/SomeArgs;>;"
    if-eqz v0, :cond_0

    .line 1218
    iget-object v1, p1, Landroid/content/pm/PackageParser$Package;->packageName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/os/SomeArgs;

    .line 1219
    .local v1, "state":Lcom/android/internal/os/SomeArgs;
    if-eqz v1, :cond_0

    .line 1220
    iget-object v2, v1, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    check-cast v2, [B

    return-object v2

    .line 1223
    .end local v1    # "state":Lcom/android/internal/os/SomeArgs;
    :cond_0
    const/4 v1, 0x0

    return-object v1
.end method

.method public handleMessage(Landroid/os/Message;)V
    .locals 7
    .param p1, "message"    # Landroid/os/Message;

    .line 1266
    iget v0, p1, Landroid/os/Message;->what:I

    .line 1267
    .local v0, "userId":I
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Landroid/content/pm/PackageParser$Package;

    .line 1268
    .local v1, "pkg":Landroid/content/pm/PackageParser$Package;
    invoke-direct {p0, v1, v0}, Lcom/android/server/pm/InstantAppRegistry$CookiePersistence;->removePendingPersistCookieLPr(Landroid/content/pm/PackageParser$Package;I)Lcom/android/internal/os/SomeArgs;

    move-result-object v2

    .line 1269
    .local v2, "state":Lcom/android/internal/os/SomeArgs;
    if-nez v2, :cond_0

    .line 1270
    return-void

    .line 1272
    :cond_0
    iget-object v3, v2, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    check-cast v3, [B

    .line 1273
    .local v3, "cookie":[B
    iget-object v4, v2, Lcom/android/internal/os/SomeArgs;->arg2:Ljava/lang/Object;

    check-cast v4, Ljava/io/File;

    .line 1274
    .local v4, "cookieFile":Ljava/io/File;
    invoke-virtual {v2}, Lcom/android/internal/os/SomeArgs;->recycle()V

    .line 1275
    iget-object v5, p0, Lcom/android/server/pm/InstantAppRegistry$CookiePersistence;->this$0:Lcom/android/server/pm/InstantAppRegistry;

    iget-object v6, v1, Landroid/content/pm/PackageParser$Package;->packageName:Ljava/lang/String;

    invoke-static {v5, v3, v6, v4, v0}, Lcom/android/server/pm/InstantAppRegistry;->access$200(Lcom/android/server/pm/InstantAppRegistry;[BLjava/lang/String;Ljava/io/File;I)V

    .line 1276
    return-void
.end method

.method public schedulePersistLPw(ILandroid/content/pm/PackageParser$Package;[B)V
    .locals 5
    .param p1, "userId"    # I
    .param p2, "pkg"    # Landroid/content/pm/PackageParser$Package;
    .param p3, "cookie"    # [B

    .line 1198
    iget-object v0, p2, Landroid/content/pm/PackageParser$Package;->packageName:Ljava/lang/String;

    iget-object v1, p2, Landroid/content/pm/PackageParser$Package;->mSigningDetails:Landroid/content/pm/PackageParser$SigningDetails;

    iget-object v1, v1, Landroid/content/pm/PackageParser$SigningDetails;->signatures:[Landroid/content/pm/Signature;

    .line 1199
    invoke-static {v1}, Landroid/util/PackageUtils;->computeSignaturesSha256Digest([Landroid/content/pm/Signature;)Ljava/lang/String;

    move-result-object v1

    .line 1198
    invoke-static {v0, v1, p1}, Lcom/android/server/pm/InstantAppRegistry;->access$000(Ljava/lang/String;Ljava/lang/String;I)Ljava/io/File;

    move-result-object v0

    .line 1200
    .local v0, "newCookieFile":Ljava/io/File;
    iget-object v1, p2, Landroid/content/pm/PackageParser$Package;->mSigningDetails:Landroid/content/pm/PackageParser$SigningDetails;

    invoke-virtual {v1}, Landroid/content/pm/PackageParser$SigningDetails;->hasSignatures()Z

    move-result v1

    if-nez v1, :cond_0

    .line 1201
    const-string v1, "InstantAppRegistry"

    const-string v2, "Parsed Instant App contains no valid signatures!"

    invoke-static {v1, v2}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 1203
    :cond_0
    iget-object v1, p2, Landroid/content/pm/PackageParser$Package;->packageName:Ljava/lang/String;

    invoke-static {v1, p1}, Lcom/android/server/pm/InstantAppRegistry;->access$100(Ljava/lang/String;I)Ljava/io/File;

    move-result-object v1

    .line 1204
    .local v1, "oldCookieFile":Ljava/io/File;
    if-eqz v1, :cond_1

    invoke-virtual {v0, v1}, Ljava/io/File;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 1205
    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    .line 1207
    :cond_1
    invoke-virtual {p0, p2, p1}, Lcom/android/server/pm/InstantAppRegistry$CookiePersistence;->cancelPendingPersistLPw(Landroid/content/pm/PackageParser$Package;I)V

    .line 1208
    invoke-direct {p0, p1, p2, p3, v0}, Lcom/android/server/pm/InstantAppRegistry$CookiePersistence;->addPendingPersistCookieLPw(ILandroid/content/pm/PackageParser$Package;[BLjava/io/File;)V

    .line 1209
    invoke-virtual {p0, p1, p2}, Lcom/android/server/pm/InstantAppRegistry$CookiePersistence;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    const-wide/16 v3, 0x3e8

    invoke-virtual {p0, v2, v3, v4}, Lcom/android/server/pm/InstantAppRegistry$CookiePersistence;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 1211
    return-void
.end method

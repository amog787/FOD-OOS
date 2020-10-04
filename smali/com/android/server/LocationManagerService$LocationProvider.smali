.class public Lcom/android/server/LocationManagerService$LocationProvider;
.super Ljava/lang/Object;
.source "LocationManagerService.java"

# interfaces
.implements Lcom/android/server/location/AbstractLocationProvider$LocationProviderManager;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/LocationManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4
    name = "LocationProvider"
.end annotation


# instance fields
.field private mAllowed:Z
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation
.end field

.field private mEnabled:Z
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation
.end field

.field private final mIsManagedBySettings:Z

.field private final mName:Ljava/lang/String;

.field private mProperties:Lcom/android/internal/location/ProviderProperties;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation
.end field

.field protected mProvider:Lcom/android/server/location/AbstractLocationProvider;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation
.end field

.field private mUseable:Z
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/android/server/LocationManagerService;


# direct methods
.method private constructor <init>(Lcom/android/server/LocationManagerService;Ljava/lang/String;)V
    .locals 1
    .param p1, "this$0"    # Lcom/android/server/LocationManagerService;
    .param p2, "name"    # Ljava/lang/String;

    .line 1114
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/android/server/LocationManagerService$LocationProvider;-><init>(Lcom/android/server/LocationManagerService;Ljava/lang/String;Z)V

    .line 1115
    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/LocationManagerService;Ljava/lang/String;Lcom/android/server/LocationManagerService$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/android/server/LocationManagerService;
    .param p2, "x1"    # Ljava/lang/String;
    .param p3, "x2"    # Lcom/android/server/LocationManagerService$1;

    .line 1092
    invoke-direct {p0, p1, p2}, Lcom/android/server/LocationManagerService$LocationProvider;-><init>(Lcom/android/server/LocationManagerService;Ljava/lang/String;)V

    return-void
.end method

.method private constructor <init>(Lcom/android/server/LocationManagerService;Ljava/lang/String;Z)V
    .locals 4
    .param p1, "this$0"    # Lcom/android/server/LocationManagerService;
    .param p2, "name"    # Ljava/lang/String;
    .param p3, "isManagedBySettings"    # Z

    .line 1117
    iput-object p1, p0, Lcom/android/server/LocationManagerService$LocationProvider;->this$0:Lcom/android/server/LocationManagerService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1118
    iput-object p2, p0, Lcom/android/server/LocationManagerService$LocationProvider;->mName:Ljava/lang/String;

    .line 1119
    iput-boolean p3, p0, Lcom/android/server/LocationManagerService$LocationProvider;->mIsManagedBySettings:Z

    .line 1121
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/LocationManagerService$LocationProvider;->mProvider:Lcom/android/server/location/AbstractLocationProvider;

    .line 1122
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/server/LocationManagerService$LocationProvider;->mUseable:Z

    .line 1123
    iget-boolean v2, p0, Lcom/android/server/LocationManagerService$LocationProvider;->mIsManagedBySettings:Z

    xor-int/lit8 v3, v2, 0x1

    iput-boolean v3, p0, Lcom/android/server/LocationManagerService$LocationProvider;->mAllowed:Z

    .line 1124
    iput-boolean v1, p0, Lcom/android/server/LocationManagerService$LocationProvider;->mEnabled:Z

    .line 1125
    iput-object v0, p0, Lcom/android/server/LocationManagerService$LocationProvider;->mProperties:Lcom/android/internal/location/ProviderProperties;

    .line 1127
    if-eqz v2, :cond_0

    .line 1129
    nop

    .line 1130
    invoke-static {p1}, Lcom/android/server/LocationManagerService;->access$1900(Lcom/android/server/LocationManagerService;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "-"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/LocationManagerService$LocationProvider;->mName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1133
    invoke-static {p1}, Lcom/android/server/LocationManagerService;->access$2000(Lcom/android/server/LocationManagerService;)I

    move-result v2

    .line 1129
    const-string/jumbo v3, "location_providers_allowed"

    invoke-static {v0, v3, v1, v2}, Landroid/provider/Settings$Secure;->putStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;I)Z

    .line 1135
    :cond_0
    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/LocationManagerService;Ljava/lang/String;ZLcom/android/server/LocationManagerService$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/android/server/LocationManagerService;
    .param p2, "x1"    # Ljava/lang/String;
    .param p3, "x2"    # Z
    .param p4, "x3"    # Lcom/android/server/LocationManagerService$1;

    .line 1092
    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/LocationManagerService$LocationProvider;-><init>(Lcom/android/server/LocationManagerService;Ljava/lang/String;Z)V

    return-void
.end method

.method private isUseableIgnoringAllowedLocked()Z
    .locals 1
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation

    .line 1368
    iget-object v0, p0, Lcom/android/server/LocationManagerService$LocationProvider;->mProvider:Lcom/android/server/location/AbstractLocationProvider;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/LocationManagerService$LocationProvider;->this$0:Lcom/android/server/LocationManagerService;

    invoke-static {v0}, Lcom/android/server/LocationManagerService;->access$200(Lcom/android/server/LocationManagerService;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/LocationManagerService$LocationProvider;->this$0:Lcom/android/server/LocationManagerService;

    invoke-static {v0}, Lcom/android/server/LocationManagerService;->access$2300(Lcom/android/server/LocationManagerService;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/server/LocationManagerService$LocationProvider;->mEnabled:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method


# virtual methods
.method public attachLocked(Lcom/android/server/location/AbstractLocationProvider;)V
    .locals 3
    .param p1, "provider"    # Lcom/android/server/location/AbstractLocationProvider;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation

    .line 1139
    invoke-static {p1}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1140
    iget-object v0, p0, Lcom/android/server/LocationManagerService$LocationProvider;->mProvider:Lcom/android/server/location/AbstractLocationProvider;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    invoke-static {v0}, Lcom/android/internal/util/Preconditions;->checkState(Z)V

    .line 1142
    sget-boolean v0, Lcom/android/server/LocationManagerService;->D:Z

    if-eqz v0, :cond_1

    .line 1143
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/android/server/LocationManagerService$LocationProvider;->mName:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " provider attached"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "LocationManagerService"

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1146
    :cond_1
    iput-object p1, p0, Lcom/android/server/LocationManagerService$LocationProvider;->mProvider:Lcom/android/server/location/AbstractLocationProvider;

    .line 1147
    invoke-virtual {p0, v1}, Lcom/android/server/LocationManagerService$LocationProvider;->onUseableChangedLocked(Z)V

    .line 1148
    return-void
.end method

.method public dumpLocked(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 3
    .param p1, "fd"    # Ljava/io/FileDescriptor;
    .param p2, "pw"    # Ljava/io/PrintWriter;
    .param p3, "args"    # [Ljava/lang/String;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation

    .line 1193
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/LocationManagerService$LocationProvider;->mName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " provider"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1194
    invoke-virtual {p0}, Lcom/android/server/LocationManagerService$LocationProvider;->isMock()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1195
    const-string v0, " [mock]"

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1197
    :cond_0
    const-string v0, ":"

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1199
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "    useable="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/server/LocationManagerService$LocationProvider;->mUseable:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1200
    iget-boolean v0, p0, Lcom/android/server/LocationManagerService$LocationProvider;->mUseable:Z

    if-nez v0, :cond_3

    .line 1201
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "    attached="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/LocationManagerService$LocationProvider;->mProvider:Lcom/android/server/location/AbstractLocationProvider;

    if-eqz v1, :cond_1

    const/4 v1, 0x1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :goto_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1202
    iget-boolean v0, p0, Lcom/android/server/LocationManagerService$LocationProvider;->mIsManagedBySettings:Z

    if-eqz v0, :cond_2

    .line 1203
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "    allowed="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/server/LocationManagerService$LocationProvider;->mAllowed:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1205
    :cond_2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "    enabled="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/server/LocationManagerService$LocationProvider;->mEnabled:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1208
    :cond_3
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "    properties="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/LocationManagerService$LocationProvider;->mProperties:Lcom/android/internal/location/ProviderProperties;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1210
    iget-object v0, p0, Lcom/android/server/LocationManagerService$LocationProvider;->mProvider:Lcom/android/server/location/AbstractLocationProvider;

    if-eqz v0, :cond_4

    .line 1211
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 1213
    .local v0, "identity":J
    :try_start_0
    iget-object v2, p0, Lcom/android/server/LocationManagerService$LocationProvider;->mProvider:Lcom/android/server/location/AbstractLocationProvider;

    invoke-virtual {v2, p1, p2, p3}, Lcom/android/server/location/AbstractLocationProvider;->dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1215
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1216
    goto :goto_1

    .line 1215
    :catchall_0
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v2

    .line 1218
    .end local v0    # "identity":J
    :cond_4
    :goto_1
    return-void
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .line 1151
    iget-object v0, p0, Lcom/android/server/LocationManagerService$LocationProvider;->mName:Ljava/lang/String;

    return-object v0
.end method

.method public getPackagesLocked()Ljava/util/List;
    .locals 1
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1156
    iget-object v0, p0, Lcom/android/server/LocationManagerService$LocationProvider;->mProvider:Lcom/android/server/location/AbstractLocationProvider;

    if-nez v0, :cond_0

    .line 1157
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    return-object v0

    .line 1160
    :cond_0
    invoke-virtual {v0}, Lcom/android/server/location/AbstractLocationProvider;->getProviderPackages()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getPropertiesLocked()Lcom/android/internal/location/ProviderProperties;
    .locals 1
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation

    .line 1176
    iget-object v0, p0, Lcom/android/server/LocationManagerService$LocationProvider;->mProperties:Lcom/android/internal/location/ProviderProperties;

    return-object v0
.end method

.method public getStatusLocked(Landroid/os/Bundle;)I
    .locals 3
    .param p1, "extras"    # Landroid/os/Bundle;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation

    .line 1236
    iget-object v0, p0, Lcom/android/server/LocationManagerService$LocationProvider;->mProvider:Lcom/android/server/location/AbstractLocationProvider;

    if-eqz v0, :cond_0

    .line 1237
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 1239
    .local v0, "identity":J
    :try_start_0
    iget-object v2, p0, Lcom/android/server/LocationManagerService$LocationProvider;->mProvider:Lcom/android/server/location/AbstractLocationProvider;

    invoke-virtual {v2, p1}, Lcom/android/server/location/AbstractLocationProvider;->getStatus(Landroid/os/Bundle;)I

    move-result v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1241
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1239
    return v2

    .line 1241
    :catchall_0
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v2

    .line 1244
    .end local v0    # "identity":J
    :cond_0
    const/4 v0, 0x2

    return v0
.end method

.method public getStatusUpdateTimeLocked()J
    .locals 4
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation

    .line 1222
    iget-object v0, p0, Lcom/android/server/LocationManagerService$LocationProvider;->mProvider:Lcom/android/server/location/AbstractLocationProvider;

    if-eqz v0, :cond_0

    .line 1223
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 1225
    .local v0, "identity":J
    :try_start_0
    iget-object v2, p0, Lcom/android/server/LocationManagerService$LocationProvider;->mProvider:Lcom/android/server/location/AbstractLocationProvider;

    invoke-virtual {v2}, Lcom/android/server/location/AbstractLocationProvider;->getStatusUpdateTime()J

    move-result-wide v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1227
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1225
    return-wide v2

    .line 1227
    :catchall_0
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v2

    .line 1230
    .end local v0    # "identity":J
    :cond_0
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public isMock()Z
    .locals 1

    .line 1165
    const/4 v0, 0x0

    return v0
.end method

.method public isPassiveLocked()Z
    .locals 2
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation

    .line 1170
    iget-object v0, p0, Lcom/android/server/LocationManagerService$LocationProvider;->mProvider:Lcom/android/server/location/AbstractLocationProvider;

    iget-object v1, p0, Lcom/android/server/LocationManagerService$LocationProvider;->this$0:Lcom/android/server/LocationManagerService;

    invoke-static {v1}, Lcom/android/server/LocationManagerService;->access$2100(Lcom/android/server/LocationManagerService;)Lcom/android/server/location/PassiveProvider;

    move-result-object v1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isUseableForUserLocked(I)Z
    .locals 1
    .param p1, "userId"    # I
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation

    .line 1363
    iget-object v0, p0, Lcom/android/server/LocationManagerService$LocationProvider;->this$0:Lcom/android/server/LocationManagerService;

    invoke-static {v0, p1}, Lcom/android/server/LocationManagerService;->access$2200(Lcom/android/server/LocationManagerService;I)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/server/LocationManagerService$LocationProvider;->mUseable:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isUseableLocked()Z
    .locals 1
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation

    .line 1358
    iget-object v0, p0, Lcom/android/server/LocationManagerService$LocationProvider;->this$0:Lcom/android/server/LocationManagerService;

    invoke-static {v0}, Lcom/android/server/LocationManagerService;->access$2000(Lcom/android/server/LocationManagerService;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/server/LocationManagerService$LocationProvider;->isUseableForUserLocked(I)Z

    move-result v0

    return v0
.end method

.method public synthetic lambda$onReportLocation$0$LocationManagerService$LocationProvider(Landroid/location/Location;)V
    .locals 2
    .param p1, "location"    # Landroid/location/Location;

    .line 1266
    iget-object v0, p0, Lcom/android/server/LocationManagerService$LocationProvider;->this$0:Lcom/android/server/LocationManagerService;

    invoke-static {v0}, Lcom/android/server/LocationManagerService;->access$100(Lcom/android/server/LocationManagerService;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 1267
    :try_start_0
    iget-object v1, p0, Lcom/android/server/LocationManagerService$LocationProvider;->this$0:Lcom/android/server/LocationManagerService;

    invoke-static {v1, p1, p0}, Lcom/android/server/LocationManagerService;->access$2900(Lcom/android/server/LocationManagerService;Landroid/location/Location;Lcom/android/server/LocationManagerService$LocationProvider;)V

    .line 1268
    monitor-exit v0

    .line 1269
    return-void

    .line 1268
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public synthetic lambda$onReportLocation$1$LocationManagerService$LocationProvider(Ljava/util/List;)V
    .locals 5
    .param p1, "locations"    # Ljava/util/List;

    .line 1277
    iget-object v0, p0, Lcom/android/server/LocationManagerService$LocationProvider;->this$0:Lcom/android/server/LocationManagerService;

    invoke-static {v0}, Lcom/android/server/LocationManagerService;->access$100(Lcom/android/server/LocationManagerService;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 1278
    :try_start_0
    iget-object v1, p0, Lcom/android/server/LocationManagerService$LocationProvider;->this$0:Lcom/android/server/LocationManagerService;

    const-string v2, "gps"

    invoke-static {v1, v2}, Lcom/android/server/LocationManagerService;->access$2700(Lcom/android/server/LocationManagerService;Ljava/lang/String;)Lcom/android/server/LocationManagerService$LocationProvider;

    move-result-object v1

    .line 1279
    .local v1, "gpsProvider":Lcom/android/server/LocationManagerService$LocationProvider;
    if-eqz v1, :cond_2

    invoke-virtual {v1}, Lcom/android/server/LocationManagerService$LocationProvider;->isUseableLocked()Z

    move-result v2

    if-nez v2, :cond_0

    goto :goto_1

    .line 1284
    :cond_0
    iget-object v2, p0, Lcom/android/server/LocationManagerService$LocationProvider;->this$0:Lcom/android/server/LocationManagerService;

    invoke-static {v2}, Lcom/android/server/LocationManagerService;->access$2800(Lcom/android/server/LocationManagerService;)Landroid/location/IBatchedLocationCallback;

    move-result-object v2

    if-nez v2, :cond_1

    .line 1285
    const-string v2, "LocationManagerService"

    const-string/jumbo v3, "reportLocationBatch() called without active Callback"

    invoke-static {v2, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1286
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    .line 1290
    :cond_1
    :try_start_1
    iget-object v2, p0, Lcom/android/server/LocationManagerService$LocationProvider;->this$0:Lcom/android/server/LocationManagerService;

    invoke-static {v2}, Lcom/android/server/LocationManagerService;->access$2800(Lcom/android/server/LocationManagerService;)Landroid/location/IBatchedLocationCallback;

    move-result-object v2

    invoke-interface {v2, p1}, Landroid/location/IBatchedLocationCallback;->onLocationBatch(Ljava/util/List;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1293
    goto :goto_0

    .line 1291
    :catch_0
    move-exception v2

    .line 1292
    .local v2, "e":Landroid/os/RemoteException;
    :try_start_2
    const-string v3, "LocationManagerService"

    const-string/jumbo v4, "mGnssBatchingCallback.onLocationBatch failed"

    invoke-static {v3, v4, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1294
    .end local v1    # "gpsProvider":Lcom/android/server/LocationManagerService$LocationProvider;
    .end local v2    # "e":Landroid/os/RemoteException;
    :goto_0
    monitor-exit v0

    .line 1295
    return-void

    .line 1280
    .restart local v1    # "gpsProvider":Lcom/android/server/LocationManagerService$LocationProvider;
    :cond_2
    :goto_1
    const-string v2, "LocationManagerService"

    const-string/jumbo v3, "reportLocationBatch() called without user permission"

    invoke-static {v2, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1281
    monitor-exit v0

    return-void

    .line 1294
    .end local v1    # "gpsProvider":Lcom/android/server/LocationManagerService$LocationProvider;
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1
.end method

.method public synthetic lambda$onSetEnabled$2$LocationManagerService$LocationProvider(Z)V
    .locals 4
    .param p1, "enabled"    # Z

    .line 1303
    iget-object v0, p0, Lcom/android/server/LocationManagerService$LocationProvider;->this$0:Lcom/android/server/LocationManagerService;

    invoke-static {v0}, Lcom/android/server/LocationManagerService;->access$100(Lcom/android/server/LocationManagerService;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 1304
    :try_start_0
    iget-boolean v1, p0, Lcom/android/server/LocationManagerService$LocationProvider;->mEnabled:Z

    if-ne p1, v1, :cond_0

    .line 1305
    monitor-exit v0

    return-void

    .line 1308
    :cond_0
    sget-boolean v1, Lcom/android/server/LocationManagerService;->D:Z

    if-eqz v1, :cond_1

    .line 1309
    const-string v1, "LocationManagerService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/android/server/LocationManagerService$LocationProvider;->mName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " provider enabled is now "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v3, p0, Lcom/android/server/LocationManagerService$LocationProvider;->mEnabled:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1312
    :cond_1
    iput-boolean p1, p0, Lcom/android/server/LocationManagerService$LocationProvider;->mEnabled:Z

    .line 1313
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lcom/android/server/LocationManagerService$LocationProvider;->onUseableChangedLocked(Z)V

    .line 1314
    monitor-exit v0

    .line 1315
    return-void

    .line 1314
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public onAllowedChangedLocked()V
    .locals 4
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation

    .line 1336
    iget-boolean v0, p0, Lcom/android/server/LocationManagerService$LocationProvider;->mIsManagedBySettings:Z

    if-eqz v0, :cond_2

    .line 1337
    iget-object v0, p0, Lcom/android/server/LocationManagerService$LocationProvider;->this$0:Lcom/android/server/LocationManagerService;

    .line 1338
    invoke-static {v0}, Lcom/android/server/LocationManagerService;->access$1900(Lcom/android/server/LocationManagerService;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/LocationManagerService$LocationProvider;->this$0:Lcom/android/server/LocationManagerService;

    .line 1340
    invoke-static {v1}, Lcom/android/server/LocationManagerService;->access$2000(Lcom/android/server/LocationManagerService;)I

    move-result v1

    .line 1337
    const-string/jumbo v2, "location_providers_allowed"

    invoke-static {v0, v2, v1}, Landroid/provider/Settings$Secure;->getStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    .line 1341
    .local v0, "allowedProviders":Ljava/lang/String;
    const/16 v1, 0x2c

    iget-object v2, p0, Lcom/android/server/LocationManagerService$LocationProvider;->mName:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Landroid/text/TextUtils;->delimitedStringContains(Ljava/lang/String;CLjava/lang/String;)Z

    move-result v1

    .line 1343
    .local v1, "allowed":Z
    iget-boolean v2, p0, Lcom/android/server/LocationManagerService$LocationProvider;->mAllowed:Z

    if-ne v1, v2, :cond_0

    .line 1344
    return-void

    .line 1347
    :cond_0
    sget-boolean v2, Lcom/android/server/LocationManagerService;->D:Z

    if-eqz v2, :cond_1

    .line 1348
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/android/server/LocationManagerService$LocationProvider;->mName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " provider allowed is now "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v3, p0, Lcom/android/server/LocationManagerService$LocationProvider;->mAllowed:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "LocationManagerService"

    invoke-static {v3, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1351
    :cond_1
    iput-boolean v1, p0, Lcom/android/server/LocationManagerService$LocationProvider;->mAllowed:Z

    .line 1352
    const/4 v2, 0x1

    invoke-virtual {p0, v2}, Lcom/android/server/LocationManagerService$LocationProvider;->onUseableChangedLocked(Z)V

    .line 1354
    .end local v0    # "allowedProviders":Ljava/lang/String;
    .end local v1    # "allowed":Z
    :cond_2
    return-void
.end method

.method public onLocationModeChangedLocked()V
    .locals 1
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation

    .line 1331
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/server/LocationManagerService$LocationProvider;->onUseableChangedLocked(Z)V

    .line 1332
    return-void
.end method

.method public onReportLocation(Landroid/location/Location;)V
    .locals 2
    .param p1, "location"    # Landroid/location/Location;

    .line 1265
    iget-object v0, p0, Lcom/android/server/LocationManagerService$LocationProvider;->this$0:Lcom/android/server/LocationManagerService;

    invoke-static {v0}, Lcom/android/server/LocationManagerService;->access$400(Lcom/android/server/LocationManagerService;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/android/server/-$$Lambda$LocationManagerService$LocationProvider$R123rmQLJrCf8yBSKrQD6XPhpZs;

    invoke-direct {v1, p0, p1}, Lcom/android/server/-$$Lambda$LocationManagerService$LocationProvider$R123rmQLJrCf8yBSKrQD6XPhpZs;-><init>(Lcom/android/server/LocationManagerService$LocationProvider;Landroid/location/Location;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 1270
    return-void
.end method

.method public onReportLocation(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/location/Location;",
            ">;)V"
        }
    .end annotation

    .line 1276
    .local p1, "locations":Ljava/util/List;, "Ljava/util/List<Landroid/location/Location;>;"
    iget-object v0, p0, Lcom/android/server/LocationManagerService$LocationProvider;->this$0:Lcom/android/server/LocationManagerService;

    invoke-static {v0}, Lcom/android/server/LocationManagerService;->access$400(Lcom/android/server/LocationManagerService;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/android/server/-$$Lambda$LocationManagerService$LocationProvider$UwV519Q998DTiPhy1rbdXyO3Geo;

    invoke-direct {v1, p0, p1}, Lcom/android/server/-$$Lambda$LocationManagerService$LocationProvider$UwV519Q998DTiPhy1rbdXyO3Geo;-><init>(Lcom/android/server/LocationManagerService$LocationProvider;Ljava/util/List;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 1296
    return-void
.end method

.method public onSetEnabled(Z)V
    .locals 2
    .param p1, "enabled"    # Z

    .line 1302
    iget-object v0, p0, Lcom/android/server/LocationManagerService$LocationProvider;->this$0:Lcom/android/server/LocationManagerService;

    invoke-static {v0}, Lcom/android/server/LocationManagerService;->access$400(Lcom/android/server/LocationManagerService;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/android/server/-$$Lambda$LocationManagerService$LocationProvider$nsL4uwojBLPzs1TzMfpQIBSm7p0;

    invoke-direct {v1, p0, p1}, Lcom/android/server/-$$Lambda$LocationManagerService$LocationProvider$nsL4uwojBLPzs1TzMfpQIBSm7p0;-><init>(Lcom/android/server/LocationManagerService$LocationProvider;Z)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 1316
    return-void
.end method

.method public onSetProperties(Lcom/android/internal/location/ProviderProperties;)V
    .locals 2
    .param p1, "properties"    # Lcom/android/internal/location/ProviderProperties;

    .line 1324
    iget-object v0, p0, Lcom/android/server/LocationManagerService$LocationProvider;->this$0:Lcom/android/server/LocationManagerService;

    invoke-static {v0}, Lcom/android/server/LocationManagerService;->access$100(Lcom/android/server/LocationManagerService;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 1325
    :try_start_0
    iput-object p1, p0, Lcom/android/server/LocationManagerService$LocationProvider;->mProperties:Lcom/android/internal/location/ProviderProperties;

    .line 1326
    monitor-exit v0

    .line 1327
    return-void

    .line 1326
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public onUseableChangedLocked(Z)V
    .locals 6
    .param p1, "isAllowedChanged"    # Z
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation

    .line 1377
    invoke-direct {p0}, Lcom/android/server/LocationManagerService$LocationProvider;->isUseableIgnoringAllowedLocked()Z

    move-result v0

    .line 1378
    .local v0, "useableIgnoringAllowed":Z
    if-eqz v0, :cond_0

    iget-boolean v1, p0, Lcom/android/server/LocationManagerService$LocationProvider;->mAllowed:Z

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    .line 1383
    .local v1, "useable":Z
    :goto_0
    iget-boolean v2, p0, Lcom/android/server/LocationManagerService$LocationProvider;->mIsManagedBySettings:Z

    if-eqz v2, :cond_3

    .line 1386
    const-string/jumbo v2, "location_providers_allowed"

    if-eqz v0, :cond_1

    if-nez p1, :cond_1

    .line 1387
    iget-object v3, p0, Lcom/android/server/LocationManagerService$LocationProvider;->this$0:Lcom/android/server/LocationManagerService;

    .line 1388
    invoke-static {v3}, Lcom/android/server/LocationManagerService;->access$1900(Lcom/android/server/LocationManagerService;)Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "+"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Lcom/android/server/LocationManagerService$LocationProvider;->mName:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lcom/android/server/LocationManagerService$LocationProvider;->this$0:Lcom/android/server/LocationManagerService;

    .line 1391
    invoke-static {v5}, Lcom/android/server/LocationManagerService;->access$2000(Lcom/android/server/LocationManagerService;)I

    move-result v5

    .line 1387
    invoke-static {v3, v2, v4, v5}, Landroid/provider/Settings$Secure;->putStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;I)Z

    goto :goto_1

    .line 1392
    :cond_1
    if-nez v0, :cond_2

    .line 1393
    iget-object v3, p0, Lcom/android/server/LocationManagerService$LocationProvider;->this$0:Lcom/android/server/LocationManagerService;

    .line 1394
    invoke-static {v3}, Lcom/android/server/LocationManagerService;->access$1900(Lcom/android/server/LocationManagerService;)Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "-"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Lcom/android/server/LocationManagerService$LocationProvider;->mName:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lcom/android/server/LocationManagerService$LocationProvider;->this$0:Lcom/android/server/LocationManagerService;

    .line 1397
    invoke-static {v5}, Lcom/android/server/LocationManagerService;->access$2000(Lcom/android/server/LocationManagerService;)I

    move-result v5

    .line 1393
    invoke-static {v3, v2, v4, v5}, Landroid/provider/Settings$Secure;->putStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;I)Z

    .line 1403
    :cond_2
    :goto_1
    new-instance v2, Landroid/content/Intent;

    const-string v3, "android.location.PROVIDERS_CHANGED"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1404
    .local v2, "intent":Landroid/content/Intent;
    iget-object v3, p0, Lcom/android/server/LocationManagerService$LocationProvider;->mName:Ljava/lang/String;

    const-string v4, "android.location.extra.PROVIDER_NAME"

    invoke-virtual {v2, v4, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1405
    iget-object v3, p0, Lcom/android/server/LocationManagerService$LocationProvider;->this$0:Lcom/android/server/LocationManagerService;

    invoke-static {v3}, Lcom/android/server/LocationManagerService;->access$1900(Lcom/android/server/LocationManagerService;)Landroid/content/Context;

    move-result-object v3

    sget-object v4, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {v3, v2, v4}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 1408
    .end local v2    # "intent":Landroid/content/Intent;
    :cond_3
    iget-boolean v2, p0, Lcom/android/server/LocationManagerService$LocationProvider;->mUseable:Z

    if-ne v1, v2, :cond_4

    .line 1409
    return-void

    .line 1411
    :cond_4
    iput-boolean v1, p0, Lcom/android/server/LocationManagerService$LocationProvider;->mUseable:Z

    .line 1413
    sget-boolean v2, Lcom/android/server/LocationManagerService;->D:Z

    if-eqz v2, :cond_5

    .line 1414
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/android/server/LocationManagerService$LocationProvider;->mName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " provider useable is now "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v3, p0, Lcom/android/server/LocationManagerService$LocationProvider;->mUseable:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "LocationManagerService"

    invoke-static {v3, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1417
    :cond_5
    iget-boolean v2, p0, Lcom/android/server/LocationManagerService$LocationProvider;->mUseable:Z

    if-nez v2, :cond_6

    .line 1421
    iget-object v2, p0, Lcom/android/server/LocationManagerService$LocationProvider;->this$0:Lcom/android/server/LocationManagerService;

    invoke-static {v2}, Lcom/android/server/LocationManagerService;->access$2400(Lcom/android/server/LocationManagerService;)Ljava/util/HashMap;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/HashMap;->clear()V

    .line 1422
    iget-object v2, p0, Lcom/android/server/LocationManagerService$LocationProvider;->this$0:Lcom/android/server/LocationManagerService;

    invoke-static {v2}, Lcom/android/server/LocationManagerService;->access$2500(Lcom/android/server/LocationManagerService;)Ljava/util/HashMap;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/HashMap;->clear()V

    .line 1425
    :cond_6
    iget-object v2, p0, Lcom/android/server/LocationManagerService$LocationProvider;->this$0:Lcom/android/server/LocationManagerService;

    invoke-static {v2, p0}, Lcom/android/server/LocationManagerService;->access$2600(Lcom/android/server/LocationManagerService;Lcom/android/server/LocationManagerService$LocationProvider;)V

    .line 1426
    return-void
.end method

.method public onUserChangingLocked()V
    .locals 1
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation

    .line 1433
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/LocationManagerService$LocationProvider;->mUseable:Z

    .line 1434
    iget-object v0, p0, Lcom/android/server/LocationManagerService$LocationProvider;->this$0:Lcom/android/server/LocationManagerService;

    invoke-static {v0, p0}, Lcom/android/server/LocationManagerService;->access$2600(Lcom/android/server/LocationManagerService;Lcom/android/server/LocationManagerService$LocationProvider;)V

    .line 1435
    return-void
.end method

.method public sendExtraCommandLocked(Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 3
    .param p1, "command"    # Ljava/lang/String;
    .param p2, "extras"    # Landroid/os/Bundle;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation

    .line 1250
    iget-object v0, p0, Lcom/android/server/LocationManagerService$LocationProvider;->mProvider:Lcom/android/server/location/AbstractLocationProvider;

    if-eqz v0, :cond_0

    .line 1251
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 1253
    .local v0, "identity":J
    :try_start_0
    iget-object v2, p0, Lcom/android/server/LocationManagerService$LocationProvider;->mProvider:Lcom/android/server/location/AbstractLocationProvider;

    invoke-virtual {v2, p1, p2}, Lcom/android/server/location/AbstractLocationProvider;->sendExtraCommand(Ljava/lang/String;Landroid/os/Bundle;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1255
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1256
    goto :goto_0

    .line 1255
    :catchall_0
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v2

    .line 1258
    .end local v0    # "identity":J
    :cond_0
    :goto_0
    return-void
.end method

.method public setRequestLocked(Lcom/android/internal/location/ProviderRequest;Landroid/os/WorkSource;)V
    .locals 3
    .param p1, "request"    # Lcom/android/internal/location/ProviderRequest;
    .param p2, "workSource"    # Landroid/os/WorkSource;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation

    .line 1181
    iget-object v0, p0, Lcom/android/server/LocationManagerService$LocationProvider;->mProvider:Lcom/android/server/location/AbstractLocationProvider;

    if-eqz v0, :cond_0

    .line 1182
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 1184
    .local v0, "identity":J
    :try_start_0
    iget-object v2, p0, Lcom/android/server/LocationManagerService$LocationProvider;->mProvider:Lcom/android/server/location/AbstractLocationProvider;

    invoke-virtual {v2, p1, p2}, Lcom/android/server/location/AbstractLocationProvider;->setRequest(Lcom/android/internal/location/ProviderRequest;Landroid/os/WorkSource;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1186
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1187
    goto :goto_0

    .line 1186
    :catchall_0
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v2

    .line 1189
    .end local v0    # "identity":J
    :cond_0
    :goto_0
    return-void
.end method

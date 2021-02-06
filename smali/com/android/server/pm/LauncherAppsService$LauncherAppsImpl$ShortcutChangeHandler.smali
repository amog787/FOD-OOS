.class public Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl$ShortcutChangeHandler;
.super Ljava/lang/Object;
.source "LauncherAppsService.java"

# interfaces
.implements Landroid/content/pm/LauncherApps$ShortcutChangeCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ShortcutChangeHandler"
.end annotation


# instance fields
.field private final mCallbacks:Landroid/os/RemoteCallbackList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/RemoteCallbackList<",
            "Landroid/content/pm/IShortcutChangeCallback;",
            ">;"
        }
    .end annotation
.end field

.field private final mUserManagerInternal:Landroid/os/UserManagerInternal;


# direct methods
.method constructor <init>(Landroid/os/UserManagerInternal;)V
    .locals 1
    .param p1, "userManager"    # Landroid/os/UserManagerInternal;

    .line 1137
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1141
    new-instance v0, Landroid/os/RemoteCallbackList;

    invoke-direct {v0}, Landroid/os/RemoteCallbackList;-><init>()V

    iput-object v0, p0, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl$ShortcutChangeHandler;->mCallbacks:Landroid/os/RemoteCallbackList;

    .line 1138
    iput-object p1, p0, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl$ShortcutChangeHandler;->mUserManagerInternal:Landroid/os/UserManagerInternal;

    .line 1139
    return-void
.end method

.method public static filterShortcutsByQuery(Ljava/lang/String;Ljava/util/List;Landroid/content/pm/ShortcutQueryWrapper;Z)Ljava/util/List;
    .locals 20
    .param p0, "packageName"    # Ljava/lang/String;
    .param p2, "query"    # Landroid/content/pm/ShortcutQueryWrapper;
    .param p3, "shortcutsRemoved"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Landroid/content/pm/ShortcutInfo;",
            ">;",
            "Landroid/content/pm/ShortcutQueryWrapper;",
            "Z)",
            "Ljava/util/List<",
            "Landroid/content/pm/ShortcutInfo;",
            ">;"
        }
    .end annotation

    .line 1205
    .local p1, "shortcuts":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ShortcutInfo;>;"
    invoke-virtual/range {p2 .. p2}, Landroid/content/pm/ShortcutQueryWrapper;->getChangedSince()J

    move-result-wide v0

    .line 1206
    .local v0, "changedSince":J
    invoke-virtual/range {p2 .. p2}, Landroid/content/pm/ShortcutQueryWrapper;->getPackage()Ljava/lang/String;

    move-result-object v2

    .line 1207
    .local v2, "queryPackage":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/content/pm/ShortcutQueryWrapper;->getShortcutIds()Ljava/util/List;

    move-result-object v3

    .line 1208
    .local v3, "shortcutIds":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-virtual/range {p2 .. p2}, Landroid/content/pm/ShortcutQueryWrapper;->getLocusIds()Ljava/util/List;

    move-result-object v4

    .line 1209
    .local v4, "locusIds":Ljava/util/List;, "Ljava/util/List<Landroid/content/LocusId;>;"
    invoke-virtual/range {p2 .. p2}, Landroid/content/pm/ShortcutQueryWrapper;->getActivity()Landroid/content/ComponentName;

    move-result-object v5

    .line 1210
    .local v5, "activity":Landroid/content/ComponentName;
    invoke-virtual/range {p2 .. p2}, Landroid/content/pm/ShortcutQueryWrapper;->getQueryFlags()I

    move-result v6

    .line 1212
    .local v6, "flags":I
    if-eqz v2, :cond_0

    move-object/from16 v7, p0

    invoke-virtual {v2, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_1

    .line 1213
    const/4 v8, 0x0

    return-object v8

    .line 1212
    :cond_0
    move-object/from16 v7, p0

    .line 1216
    :cond_1
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    .line 1218
    .local v8, "matches":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ShortcutInfo;>;"
    and-int/lit8 v9, v6, 0x1

    const/4 v10, 0x1

    const/4 v11, 0x0

    if-eqz v9, :cond_2

    move v9, v10

    goto :goto_0

    :cond_2
    move v9, v11

    .line 1219
    .local v9, "matchDynamic":Z
    :goto_0
    and-int/lit8 v12, v6, 0x2

    if-eqz v12, :cond_3

    move v12, v10

    goto :goto_1

    :cond_3
    move v12, v11

    .line 1220
    .local v12, "matchPinned":Z
    :goto_1
    and-int/lit8 v13, v6, 0x8

    if-eqz v13, :cond_4

    move v13, v10

    goto :goto_2

    :cond_4
    move v13, v11

    .line 1221
    .local v13, "matchManifest":Z
    :goto_2
    and-int/lit8 v14, v6, 0x10

    if-eqz v14, :cond_5

    move v14, v10

    goto :goto_3

    :cond_5
    move v14, v11

    .line 1222
    .local v14, "matchCached":Z
    :goto_3
    if-eqz v9, :cond_6

    goto :goto_4

    :cond_6
    move v10, v11

    .line 1223
    :goto_4
    if-eqz v12, :cond_7

    const/4 v15, 0x2

    goto :goto_5

    :cond_7
    move v15, v11

    :goto_5
    or-int/2addr v10, v15

    .line 1224
    if-eqz v13, :cond_8

    const/16 v15, 0x20

    goto :goto_6

    :cond_8
    move v15, v11

    :goto_6
    or-int/2addr v10, v15

    .line 1225
    if-eqz v14, :cond_9

    const v11, 0x40004000    # 2.0039062f

    :cond_9
    or-int/2addr v10, v11

    .line 1227
    .local v10, "shortcutFlags":I
    const/4 v11, 0x0

    .local v11, "i":I
    :goto_7
    invoke-interface/range {p1 .. p1}, Ljava/util/List;->size()I

    move-result v15

    if-ge v11, v15, :cond_11

    .line 1228
    move-object/from16 v15, p1

    invoke-interface {v15, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v16

    move-object/from16 v17, v2

    .end local v2    # "queryPackage":Ljava/lang/String;
    .local v17, "queryPackage":Ljava/lang/String;
    move-object/from16 v2, v16

    check-cast v2, Landroid/content/pm/ShortcutInfo;

    .line 1230
    .local v2, "si":Landroid/content/pm/ShortcutInfo;
    if-eqz v5, :cond_a

    move/from16 v16, v6

    .end local v6    # "flags":I
    .local v16, "flags":I
    invoke-virtual {v2}, Landroid/content/pm/ShortcutInfo;->getActivity()Landroid/content/ComponentName;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/content/ComponentName;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_b

    .line 1231
    goto :goto_8

    .line 1230
    .end local v16    # "flags":I
    .restart local v6    # "flags":I
    :cond_a
    move/from16 v16, v6

    .line 1233
    .end local v6    # "flags":I
    .restart local v16    # "flags":I
    :cond_b
    const-wide/16 v18, 0x0

    cmp-long v6, v0, v18

    if-eqz v6, :cond_c

    invoke-virtual {v2}, Landroid/content/pm/ShortcutInfo;->getLastChangedTimestamp()J

    move-result-wide v18

    cmp-long v6, v0, v18

    if-lez v6, :cond_c

    .line 1234
    goto :goto_8

    .line 1236
    :cond_c
    if-eqz v3, :cond_d

    invoke-virtual {v2}, Landroid/content/pm/ShortcutInfo;->getId()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v3, v6}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_d

    .line 1237
    goto :goto_8

    .line 1239
    :cond_d
    if-eqz v4, :cond_e

    invoke-virtual {v2}, Landroid/content/pm/ShortcutInfo;->getLocusId()Landroid/content/LocusId;

    move-result-object v6

    invoke-interface {v4, v6}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_e

    .line 1240
    goto :goto_8

    .line 1242
    :cond_e
    if-nez p3, :cond_f

    invoke-virtual {v2}, Landroid/content/pm/ShortcutInfo;->getFlags()I

    move-result v6

    and-int/2addr v6, v10

    if-eqz v6, :cond_10

    .line 1243
    :cond_f
    invoke-interface {v8, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1227
    .end local v2    # "si":Landroid/content/pm/ShortcutInfo;
    :cond_10
    :goto_8
    add-int/lit8 v11, v11, 0x1

    move/from16 v6, v16

    move-object/from16 v2, v17

    goto :goto_7

    .line 1247
    .end local v11    # "i":I
    .end local v16    # "flags":I
    .end local v17    # "queryPackage":Ljava/lang/String;
    .local v2, "queryPackage":Ljava/lang/String;
    .restart local v6    # "flags":I
    :cond_11
    return-object v8
.end method

.method private hasUserAccess(Landroid/os/UserHandle;Landroid/os/UserHandle;)Z
    .locals 5
    .param p1, "callbackUser"    # Landroid/os/UserHandle;
    .param p2, "shortcutUser"    # Landroid/os/UserHandle;

    .line 1251
    invoke-virtual {p1}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v0

    .line 1252
    .local v0, "callbackUserId":I
    invoke-virtual {p2}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v1

    .line 1254
    .local v1, "shortcutUserId":I
    if-ne p2, p1, :cond_0

    const/4 v2, 0x1

    return v2

    .line 1255
    :cond_0
    iget-object v2, p0, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl$ShortcutChangeHandler;->mUserManagerInternal:Landroid/os/UserManagerInternal;

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-virtual {v2, v0, v1, v3, v4}, Landroid/os/UserManagerInternal;->isProfileAccessible(IILjava/lang/String;Z)Z

    move-result v2

    return v2
.end method

.method private onShortcutEvent(Ljava/lang/String;Ljava/util/List;Landroid/os/UserHandle;Z)V
    .locals 7
    .param p1, "packageName"    # Ljava/lang/String;
    .param p3, "user"    # Landroid/os/UserHandle;
    .param p4, "shortcutsRemoved"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Landroid/content/pm/ShortcutInfo;",
            ">;",
            "Landroid/os/UserHandle;",
            "Z)V"
        }
    .end annotation

    .line 1169
    .local p2, "shortcuts":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ShortcutInfo;>;"
    iget-object v0, p0, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl$ShortcutChangeHandler;->mCallbacks:Landroid/os/RemoteCallbackList;

    invoke-virtual {v0}, Landroid/os/RemoteCallbackList;->beginBroadcast()I

    move-result v0

    .line 1171
    .local v0, "count":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_3

    .line 1172
    iget-object v2, p0, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl$ShortcutChangeHandler;->mCallbacks:Landroid/os/RemoteCallbackList;

    invoke-virtual {v2, v1}, Landroid/os/RemoteCallbackList;->getBroadcastItem(I)Landroid/os/IInterface;

    move-result-object v2

    check-cast v2, Landroid/content/pm/IShortcutChangeCallback;

    .line 1173
    .local v2, "callback":Landroid/content/pm/IShortcutChangeCallback;
    iget-object v3, p0, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl$ShortcutChangeHandler;->mCallbacks:Landroid/os/RemoteCallbackList;

    .line 1175
    invoke-virtual {v3, v1}, Landroid/os/RemoteCallbackList;->getBroadcastCookie(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/util/Pair;

    .line 1177
    .local v3, "cookie":Landroid/util/Pair;, "Landroid/util/Pair<Landroid/content/pm/ShortcutQueryWrapper;Landroid/os/UserHandle;>;"
    iget-object v4, v3, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v4, Landroid/os/UserHandle;

    .line 1178
    .local v4, "callbackUser":Landroid/os/UserHandle;
    if-eqz v4, :cond_0

    invoke-direct {p0, v4, p3}, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl$ShortcutChangeHandler;->hasUserAccess(Landroid/os/UserHandle;Landroid/os/UserHandle;)Z

    move-result v5

    if-nez v5, :cond_0

    .line 1180
    goto :goto_2

    .line 1184
    :cond_0
    iget-object v5, v3, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v5, Landroid/content/pm/ShortcutQueryWrapper;

    invoke-static {p1, p2, v5, p4}, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl$ShortcutChangeHandler;->filterShortcutsByQuery(Ljava/lang/String;Ljava/util/List;Landroid/content/pm/ShortcutQueryWrapper;Z)Ljava/util/List;

    move-result-object v5

    .line 1186
    .local v5, "matchedList":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ShortcutInfo;>;"
    invoke-static {v5}, Lcom/android/internal/util/CollectionUtils;->isEmpty(Ljava/util/Collection;)Z

    move-result v6

    if-nez v6, :cond_2

    .line 1188
    if-eqz p4, :cond_1

    .line 1189
    :try_start_0
    invoke-interface {v2, p1, v5, p3}, Landroid/content/pm/IShortcutChangeCallback;->onShortcutsRemoved(Ljava/lang/String;Ljava/util/List;Landroid/os/UserHandle;)V

    goto :goto_1

    .line 1191
    :cond_1
    invoke-interface {v2, p1, v5, p3}, Landroid/content/pm/IShortcutChangeCallback;->onShortcutsAddedOrUpdated(Ljava/lang/String;Ljava/util/List;Landroid/os/UserHandle;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1195
    :goto_1
    goto :goto_2

    .line 1193
    :catch_0
    move-exception v6

    .line 1171
    .end local v2    # "callback":Landroid/content/pm/IShortcutChangeCallback;
    .end local v3    # "cookie":Landroid/util/Pair;, "Landroid/util/Pair<Landroid/content/pm/ShortcutQueryWrapper;Landroid/os/UserHandle;>;"
    .end local v4    # "callbackUser":Landroid/os/UserHandle;
    .end local v5    # "matchedList":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ShortcutInfo;>;"
    :cond_2
    :goto_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1199
    .end local v1    # "i":I
    :cond_3
    iget-object v1, p0, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl$ShortcutChangeHandler;->mCallbacks:Landroid/os/RemoteCallbackList;

    invoke-virtual {v1}, Landroid/os/RemoteCallbackList;->finishBroadcast()V

    .line 1200
    return-void
.end method


# virtual methods
.method public declared-synchronized addShortcutChangeCallback(Landroid/content/pm/IShortcutChangeCallback;Landroid/content/pm/ShortcutQueryWrapper;Landroid/os/UserHandle;)V
    .locals 2
    .param p1, "callback"    # Landroid/content/pm/IShortcutChangeCallback;
    .param p2, "query"    # Landroid/content/pm/ShortcutQueryWrapper;
    .param p3, "user"    # Landroid/os/UserHandle;

    monitor-enter p0

    .line 1146
    :try_start_0
    iget-object v0, p0, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl$ShortcutChangeHandler;->mCallbacks:Landroid/os/RemoteCallbackList;

    invoke-virtual {v0, p1}, Landroid/os/RemoteCallbackList;->unregister(Landroid/os/IInterface;)Z

    .line 1147
    iget-object v0, p0, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl$ShortcutChangeHandler;->mCallbacks:Landroid/os/RemoteCallbackList;

    new-instance v1, Landroid/util/Pair;

    invoke-direct {v1, p2, p3}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v0, p1, v1}, Landroid/os/RemoteCallbackList;->register(Landroid/os/IInterface;Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1148
    monitor-exit p0

    return-void

    .line 1145
    .end local p0    # "this":Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl$ShortcutChangeHandler;
    .end local p1    # "callback":Landroid/content/pm/IShortcutChangeCallback;
    .end local p2    # "query":Landroid/content/pm/ShortcutQueryWrapper;
    .end local p3    # "user":Landroid/os/UserHandle;
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public onShortcutsAddedOrUpdated(Ljava/lang/String;Ljava/util/List;Landroid/os/UserHandle;)V
    .locals 1
    .param p1, "packageName"    # Ljava/lang/String;
    .param p3, "user"    # Landroid/os/UserHandle;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Landroid/content/pm/ShortcutInfo;",
            ">;",
            "Landroid/os/UserHandle;",
            ")V"
        }
    .end annotation

    .line 1158
    .local p2, "shortcuts":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ShortcutInfo;>;"
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl$ShortcutChangeHandler;->onShortcutEvent(Ljava/lang/String;Ljava/util/List;Landroid/os/UserHandle;Z)V

    .line 1159
    return-void
.end method

.method public onShortcutsRemoved(Ljava/lang/String;Ljava/util/List;Landroid/os/UserHandle;)V
    .locals 1
    .param p1, "packageName"    # Ljava/lang/String;
    .param p3, "user"    # Landroid/os/UserHandle;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Landroid/content/pm/ShortcutInfo;",
            ">;",
            "Landroid/os/UserHandle;",
            ")V"
        }
    .end annotation

    .line 1164
    .local p2, "shortcuts":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ShortcutInfo;>;"
    const/4 v0, 0x1

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl$ShortcutChangeHandler;->onShortcutEvent(Ljava/lang/String;Ljava/util/List;Landroid/os/UserHandle;Z)V

    .line 1165
    return-void
.end method

.method public declared-synchronized removeShortcutChangeCallback(Landroid/content/pm/IShortcutChangeCallback;)V
    .locals 1
    .param p1, "callback"    # Landroid/content/pm/IShortcutChangeCallback;

    monitor-enter p0

    .line 1152
    :try_start_0
    iget-object v0, p0, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl$ShortcutChangeHandler;->mCallbacks:Landroid/os/RemoteCallbackList;

    invoke-virtual {v0, p1}, Landroid/os/RemoteCallbackList;->unregister(Landroid/os/IInterface;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1153
    monitor-exit p0

    return-void

    .line 1151
    .end local p0    # "this":Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl$ShortcutChangeHandler;
    .end local p1    # "callback":Landroid/content/pm/IShortcutChangeCallback;
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

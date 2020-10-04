.class Lcom/android/server/backup/UserBackupManagerService$2;
.super Landroid/content/BroadcastReceiver;
.source "UserBackupManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/backup/UserBackupManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/backup/UserBackupManagerService;


# direct methods
.method constructor <init>(Lcom/android/server/backup/UserBackupManagerService;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/server/backup/UserBackupManagerService;

    .line 1161
    iput-object p1, p0, Lcom/android/server/backup/UserBackupManagerService$2;->this$0:Lcom/android/server/backup/UserBackupManagerService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public synthetic lambda$onReceive$0$UserBackupManagerService$2(Ljava/lang/String;[Ljava/lang/String;)V
    .locals 1
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "components"    # [Ljava/lang/String;

    .line 1201
    iget-object v0, p0, Lcom/android/server/backup/UserBackupManagerService$2;->this$0:Lcom/android/server/backup/UserBackupManagerService;

    invoke-static {v0}, Lcom/android/server/backup/UserBackupManagerService;->access$1100(Lcom/android/server/backup/UserBackupManagerService;)Lcom/android/server/backup/TransportManager;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/android/server/backup/TransportManager;->onPackageChanged(Ljava/lang/String;[Ljava/lang/String;)V

    return-void
.end method

.method public synthetic lambda$onReceive$1$UserBackupManagerService$2(Ljava/lang/String;)V
    .locals 1
    .param p1, "packageName"    # Ljava/lang/String;

    .line 1252
    iget-object v0, p0, Lcom/android/server/backup/UserBackupManagerService$2;->this$0:Lcom/android/server/backup/UserBackupManagerService;

    invoke-static {v0}, Lcom/android/server/backup/UserBackupManagerService;->access$1100(Lcom/android/server/backup/UserBackupManagerService;)Lcom/android/server/backup/TransportManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/server/backup/TransportManager;->onPackageAdded(Ljava/lang/String;)V

    return-void
.end method

.method public synthetic lambda$onReceive$2$UserBackupManagerService$2(Ljava/lang/String;)V
    .locals 1
    .param p1, "packageName"    # Ljava/lang/String;

    .line 1274
    iget-object v0, p0, Lcom/android/server/backup/UserBackupManagerService$2;->this$0:Lcom/android/server/backup/UserBackupManagerService;

    invoke-static {v0}, Lcom/android/server/backup/UserBackupManagerService;->access$1100(Lcom/android/server/backup/UserBackupManagerService;)Lcom/android/server/backup/TransportManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/server/backup/TransportManager;->onPackageRemoved(Ljava/lang/String;)V

    return-void
.end method

.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 17
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .line 1167
    move-object/from16 v1, p0

    move-object/from16 v2, p2

    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v3

    .line 1168
    .local v3, "action":Ljava/lang/String;
    const/4 v0, 0x0

    .line 1169
    .local v0, "replacing":Z
    const/4 v4, 0x0

    .line 1170
    .local v4, "added":Z
    const/4 v5, 0x0

    .line 1171
    .local v5, "changed":Z
    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v6

    .line 1172
    .local v6, "extras":Landroid/os/Bundle;
    const/4 v7, 0x0

    .line 1174
    .local v7, "packageList":[Ljava/lang/String;
    const-string v8, "android.intent.action.PACKAGE_ADDED"

    invoke-virtual {v8, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    const/4 v9, 0x0

    if-nez v8, :cond_3

    .line 1175
    const-string v8, "android.intent.action.PACKAGE_REMOVED"

    invoke-virtual {v8, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_3

    .line 1176
    const-string v8, "android.intent.action.PACKAGE_CHANGED"

    invoke-virtual {v8, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_0

    goto :goto_0

    .line 1207
    :cond_0
    const-string v8, "android.intent.action.EXTERNAL_APPLICATIONS_AVAILABLE"

    invoke-virtual {v8, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_1

    .line 1208
    const/4 v4, 0x1

    .line 1209
    const-string v8, "android.intent.extra.changed_package_list"

    invoke-virtual {v2, v8}, Landroid/content/Intent;->getStringArrayExtra(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v7

    move v8, v5

    move v5, v0

    goto :goto_1

    .line 1210
    :cond_1
    const-string v8, "android.intent.action.EXTERNAL_APPLICATIONS_UNAVAILABLE"

    invoke-virtual {v8, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_2

    .line 1211
    const/4 v4, 0x0

    .line 1212
    const-string v8, "android.intent.extra.changed_package_list"

    invoke-virtual {v2, v8}, Landroid/content/Intent;->getStringArrayExtra(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v7

    move v8, v5

    move v5, v0

    goto :goto_1

    .line 1210
    :cond_2
    move v8, v5

    move v5, v0

    goto :goto_1

    .line 1177
    :cond_3
    :goto_0
    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v8

    .line 1178
    .local v8, "uri":Landroid/net/Uri;
    if-nez v8, :cond_4

    .line 1179
    return-void

    .line 1182
    :cond_4
    invoke-virtual {v8}, Landroid/net/Uri;->getSchemeSpecificPart()Ljava/lang/String;

    move-result-object v10

    .line 1183
    .local v10, "packageName":Ljava/lang/String;
    if-eqz v10, :cond_5

    .line 1184
    const/4 v11, 0x1

    new-array v11, v11, [Ljava/lang/String;

    aput-object v10, v11, v9

    move-object v7, v11

    .line 1187
    :cond_5
    const-string v11, "android.intent.action.PACKAGE_CHANGED"

    invoke-virtual {v11, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    .line 1188
    if-eqz v5, :cond_6

    .line 1190
    nop

    .line 1191
    const-string v9, "android.intent.extra.changed_component_name_list"

    invoke-virtual {v2, v9}, Landroid/content/Intent;->getStringArrayExtra(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v9

    .line 1200
    .local v9, "components":[Ljava/lang/String;
    iget-object v11, v1, Lcom/android/server/backup/UserBackupManagerService$2;->this$0:Lcom/android/server/backup/UserBackupManagerService;

    invoke-static {v11}, Lcom/android/server/backup/UserBackupManagerService;->access$300(Lcom/android/server/backup/UserBackupManagerService;)Lcom/android/server/backup/internal/BackupHandler;

    move-result-object v11

    new-instance v12, Lcom/android/server/backup/-$$Lambda$UserBackupManagerService$2$VpHOYQHCWBG618oharjEXEDr57U;

    invoke-direct {v12, v1, v10, v9}, Lcom/android/server/backup/-$$Lambda$UserBackupManagerService$2$VpHOYQHCWBG618oharjEXEDr57U;-><init>(Lcom/android/server/backup/UserBackupManagerService$2;Ljava/lang/String;[Ljava/lang/String;)V

    invoke-virtual {v11, v12}, Lcom/android/server/backup/internal/BackupHandler;->post(Ljava/lang/Runnable;)Z

    .line 1202
    return-void

    .line 1205
    .end local v9    # "components":[Ljava/lang/String;
    :cond_6
    const-string v11, "android.intent.action.PACKAGE_ADDED"

    invoke-virtual {v11, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    .line 1206
    const-string v11, "android.intent.extra.REPLACING"

    invoke-virtual {v6, v11, v9}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    .line 1207
    .end local v8    # "uri":Landroid/net/Uri;
    .end local v10    # "packageName":Ljava/lang/String;
    move v8, v5

    move v5, v0

    .line 1215
    .end local v0    # "replacing":Z
    .local v5, "replacing":Z
    .local v8, "changed":Z
    :goto_1
    if-eqz v7, :cond_f

    array-length v0, v7

    if-nez v0, :cond_7

    move-object/from16 v16, v3

    goto/16 :goto_c

    .line 1219
    :cond_7
    const-string v0, "android.intent.extra.UID"

    invoke-virtual {v6, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v10

    .line 1220
    .local v10, "uid":I
    if-eqz v4, :cond_c

    .line 1221
    iget-object v0, v1, Lcom/android/server/backup/UserBackupManagerService$2;->this$0:Lcom/android/server/backup/UserBackupManagerService;

    invoke-static {v0}, Lcom/android/server/backup/UserBackupManagerService;->access$400(Lcom/android/server/backup/UserBackupManagerService;)Landroid/util/SparseArray;

    move-result-object v11

    monitor-enter v11

    .line 1222
    if-eqz v5, :cond_8

    .line 1225
    :try_start_0
    iget-object v0, v1, Lcom/android/server/backup/UserBackupManagerService$2;->this$0:Lcom/android/server/backup/UserBackupManagerService;

    invoke-static {v0, v7, v10}, Lcom/android/server/backup/UserBackupManagerService;->access$500(Lcom/android/server/backup/UserBackupManagerService;[Ljava/lang/String;I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_2

    .line 1228
    :catchall_0
    move-exception v0

    move-object/from16 v16, v3

    goto/16 :goto_8

    .line 1227
    :cond_8
    :goto_2
    :try_start_1
    iget-object v0, v1, Lcom/android/server/backup/UserBackupManagerService$2;->this$0:Lcom/android/server/backup/UserBackupManagerService;

    invoke-static {v0, v7}, Lcom/android/server/backup/UserBackupManagerService;->access$600(Lcom/android/server/backup/UserBackupManagerService;[Ljava/lang/String;)V

    .line 1228
    monitor-exit v11
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    .line 1230
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v11

    .line 1231
    .local v11, "now":J
    array-length v13, v7

    move v14, v9

    :goto_3
    if-ge v14, v13, :cond_b

    aget-object v15, v7, v14

    .line 1233
    .local v15, "packageName":Ljava/lang/String;
    :try_start_2
    iget-object v0, v1, Lcom/android/server/backup/UserBackupManagerService$2;->this$0:Lcom/android/server/backup/UserBackupManagerService;

    .line 1234
    invoke-static {v0}, Lcom/android/server/backup/UserBackupManagerService;->access$800(Lcom/android/server/backup/UserBackupManagerService;)Landroid/content/pm/PackageManager;

    move-result-object v0

    iget-object v9, v1, Lcom/android/server/backup/UserBackupManagerService$2;->this$0:Lcom/android/server/backup/UserBackupManagerService;

    .line 1235
    invoke-static {v9}, Lcom/android/server/backup/UserBackupManagerService;->access$700(Lcom/android/server/backup/UserBackupManagerService;)I

    move-result v9

    .line 1234
    const/4 v2, 0x0

    invoke-virtual {v0, v15, v2, v9}, Landroid/content/pm/PackageManager;->getPackageInfoAsUser(Ljava/lang/String;II)Landroid/content/pm/PackageInfo;

    move-result-object v0

    move-object v9, v0

    .line 1236
    .local v9, "app":Landroid/content/pm/PackageInfo;
    invoke-static {v9}, Lcom/android/server/backup/utils/AppBackupUtils;->appGetsFullBackup(Landroid/content/pm/PackageInfo;)Z

    move-result v0

    if-eqz v0, :cond_a

    iget-object v0, v9, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v2, v1, Lcom/android/server/backup/UserBackupManagerService$2;->this$0:Lcom/android/server/backup/UserBackupManagerService;

    .line 1238
    invoke-static {v2}, Lcom/android/server/backup/UserBackupManagerService;->access$700(Lcom/android/server/backup/UserBackupManagerService;)I

    move-result v2

    .line 1237
    invoke-static {v0, v2}, Lcom/android/server/backup/utils/AppBackupUtils;->appIsEligibleForBackup(Landroid/content/pm/ApplicationInfo;I)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 1239
    iget-object v0, v1, Lcom/android/server/backup/UserBackupManagerService$2;->this$0:Lcom/android/server/backup/UserBackupManagerService;

    invoke-virtual {v0, v15, v11, v12}, Lcom/android/server/backup/UserBackupManagerService;->enqueueFullBackup(Ljava/lang/String;J)V

    .line 1240
    iget-object v0, v1, Lcom/android/server/backup/UserBackupManagerService$2;->this$0:Lcom/android/server/backup/UserBackupManagerService;
    :try_end_2
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_2 .. :try_end_2} :catch_1

    move-object/from16 v16, v3

    .end local v3    # "action":Ljava/lang/String;
    .local v16, "action":Ljava/lang/String;
    const-wide/16 v2, 0x0

    :try_start_3
    invoke-virtual {v0, v2, v3}, Lcom/android/server/backup/UserBackupManagerService;->scheduleNextFullBackupJob(J)V

    goto :goto_5

    .line 1237
    .end local v16    # "action":Ljava/lang/String;
    .restart local v3    # "action":Ljava/lang/String;
    :cond_9
    move-object/from16 v16, v3

    .end local v3    # "action":Ljava/lang/String;
    .restart local v16    # "action":Ljava/lang/String;
    goto :goto_4

    .line 1236
    .end local v16    # "action":Ljava/lang/String;
    .restart local v3    # "action":Ljava/lang/String;
    :cond_a
    move-object/from16 v16, v3

    .line 1245
    .end local v3    # "action":Ljava/lang/String;
    .restart local v16    # "action":Ljava/lang/String;
    :goto_4
    iget-object v0, v1, Lcom/android/server/backup/UserBackupManagerService$2;->this$0:Lcom/android/server/backup/UserBackupManagerService;

    invoke-static {v0}, Lcom/android/server/backup/UserBackupManagerService;->access$000(Lcom/android/server/backup/UserBackupManagerService;)Ljava/lang/Object;

    move-result-object v2

    monitor-enter v2
    :try_end_3
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_3 .. :try_end_3} :catch_0

    .line 1246
    :try_start_4
    iget-object v0, v1, Lcom/android/server/backup/UserBackupManagerService$2;->this$0:Lcom/android/server/backup/UserBackupManagerService;

    invoke-static {v0, v15}, Lcom/android/server/backup/UserBackupManagerService;->access$900(Lcom/android/server/backup/UserBackupManagerService;Ljava/lang/String;)V

    .line 1247
    monitor-exit v2
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 1248
    :try_start_5
    iget-object v0, v1, Lcom/android/server/backup/UserBackupManagerService$2;->this$0:Lcom/android/server/backup/UserBackupManagerService;

    invoke-static {v0}, Lcom/android/server/backup/UserBackupManagerService;->access$1000(Lcom/android/server/backup/UserBackupManagerService;)V

    .line 1251
    :goto_5
    iget-object v0, v1, Lcom/android/server/backup/UserBackupManagerService$2;->this$0:Lcom/android/server/backup/UserBackupManagerService;

    invoke-static {v0}, Lcom/android/server/backup/UserBackupManagerService;->access$300(Lcom/android/server/backup/UserBackupManagerService;)Lcom/android/server/backup/internal/BackupHandler;

    move-result-object v0

    new-instance v2, Lcom/android/server/backup/-$$Lambda$UserBackupManagerService$2$9w65wn45YYtTkXbyQZdj_7K5LSs;

    invoke-direct {v2, v1, v15}, Lcom/android/server/backup/-$$Lambda$UserBackupManagerService$2$9w65wn45YYtTkXbyQZdj_7K5LSs;-><init>(Lcom/android/server/backup/UserBackupManagerService$2;Ljava/lang/String;)V

    invoke-virtual {v0, v2}, Lcom/android/server/backup/internal/BackupHandler;->post(Ljava/lang/Runnable;)Z
    :try_end_5
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_5 .. :try_end_5} :catch_0

    .line 1257
    nop

    .end local v9    # "app":Landroid/content/pm/PackageInfo;
    goto :goto_7

    .line 1247
    .restart local v9    # "app":Landroid/content/pm/PackageInfo;
    :catchall_1
    move-exception v0

    :try_start_6
    monitor-exit v2
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    .end local v4    # "added":Z
    .end local v5    # "replacing":Z
    .end local v6    # "extras":Landroid/os/Bundle;
    .end local v7    # "packageList":[Ljava/lang/String;
    .end local v8    # "changed":Z
    .end local v10    # "uid":I
    .end local v11    # "now":J
    .end local v15    # "packageName":Ljava/lang/String;
    .end local v16    # "action":Ljava/lang/String;
    .end local p0    # "this":Lcom/android/server/backup/UserBackupManagerService$2;
    .end local p1    # "context":Landroid/content/Context;
    .end local p2    # "intent":Landroid/content/Intent;
    :try_start_7
    throw v0
    :try_end_7
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_7 .. :try_end_7} :catch_0

    .line 1253
    .end local v9    # "app":Landroid/content/pm/PackageInfo;
    .restart local v4    # "added":Z
    .restart local v5    # "replacing":Z
    .restart local v6    # "extras":Landroid/os/Bundle;
    .restart local v7    # "packageList":[Ljava/lang/String;
    .restart local v8    # "changed":Z
    .restart local v10    # "uid":I
    .restart local v11    # "now":J
    .restart local v15    # "packageName":Ljava/lang/String;
    .restart local v16    # "action":Ljava/lang/String;
    .restart local p0    # "this":Lcom/android/server/backup/UserBackupManagerService$2;
    .restart local p1    # "context":Landroid/content/Context;
    .restart local p2    # "intent":Landroid/content/Intent;
    :catch_0
    move-exception v0

    goto :goto_6

    .end local v16    # "action":Ljava/lang/String;
    .restart local v3    # "action":Ljava/lang/String;
    :catch_1
    move-exception v0

    move-object/from16 v16, v3

    .line 1255
    .end local v3    # "action":Ljava/lang/String;
    .local v0, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    .restart local v16    # "action":Ljava/lang/String;
    :goto_6
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Can\'t resolve new app "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "BackupManagerService"

    invoke-static {v3, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1231
    .end local v0    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    .end local v15    # "packageName":Ljava/lang/String;
    :goto_7
    add-int/lit8 v14, v14, 0x1

    move-object/from16 v2, p2

    move-object/from16 v3, v16

    const/4 v9, 0x0

    goto/16 :goto_3

    .line 1262
    .end local v16    # "action":Ljava/lang/String;
    .restart local v3    # "action":Ljava/lang/String;
    :cond_b
    move-object/from16 v16, v3

    .end local v3    # "action":Ljava/lang/String;
    .restart local v16    # "action":Ljava/lang/String;
    iget-object v0, v1, Lcom/android/server/backup/UserBackupManagerService$2;->this$0:Lcom/android/server/backup/UserBackupManagerService;

    const-string v2, "@pm@"

    invoke-virtual {v0, v2}, Lcom/android/server/backup/UserBackupManagerService;->dataChangedImpl(Ljava/lang/String;)V

    .line 1263
    .end local v11    # "now":J
    goto :goto_b

    .line 1228
    .end local v16    # "action":Ljava/lang/String;
    .restart local v3    # "action":Ljava/lang/String;
    :catchall_2
    move-exception v0

    move-object/from16 v16, v3

    .end local v3    # "action":Ljava/lang/String;
    .restart local v16    # "action":Ljava/lang/String;
    :goto_8
    :try_start_8
    monitor-exit v11
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_3

    throw v0

    :catchall_3
    move-exception v0

    goto :goto_8

    .line 1264
    .end local v16    # "action":Ljava/lang/String;
    .restart local v3    # "action":Ljava/lang/String;
    :cond_c
    move-object/from16 v16, v3

    .end local v3    # "action":Ljava/lang/String;
    .restart local v16    # "action":Ljava/lang/String;
    if-nez v5, :cond_d

    .line 1267
    iget-object v0, v1, Lcom/android/server/backup/UserBackupManagerService$2;->this$0:Lcom/android/server/backup/UserBackupManagerService;

    invoke-static {v0}, Lcom/android/server/backup/UserBackupManagerService;->access$400(Lcom/android/server/backup/UserBackupManagerService;)Landroid/util/SparseArray;

    move-result-object v2

    monitor-enter v2

    .line 1268
    :try_start_9
    iget-object v0, v1, Lcom/android/server/backup/UserBackupManagerService$2;->this$0:Lcom/android/server/backup/UserBackupManagerService;

    invoke-static {v0, v7, v10}, Lcom/android/server/backup/UserBackupManagerService;->access$500(Lcom/android/server/backup/UserBackupManagerService;[Ljava/lang/String;I)V

    .line 1269
    monitor-exit v2

    goto :goto_9

    :catchall_4
    move-exception v0

    monitor-exit v2
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_4

    throw v0

    .line 1272
    :cond_d
    :goto_9
    array-length v0, v7

    const/4 v2, 0x0

    :goto_a
    if-ge v2, v0, :cond_e

    aget-object v3, v7, v2

    .line 1273
    .local v3, "packageName":Ljava/lang/String;
    iget-object v9, v1, Lcom/android/server/backup/UserBackupManagerService$2;->this$0:Lcom/android/server/backup/UserBackupManagerService;

    invoke-static {v9}, Lcom/android/server/backup/UserBackupManagerService;->access$300(Lcom/android/server/backup/UserBackupManagerService;)Lcom/android/server/backup/internal/BackupHandler;

    move-result-object v9

    new-instance v11, Lcom/android/server/backup/-$$Lambda$UserBackupManagerService$2$ICUfBQAK1UQkmGSsPDmR00etFBk;

    invoke-direct {v11, v1, v3}, Lcom/android/server/backup/-$$Lambda$UserBackupManagerService$2$ICUfBQAK1UQkmGSsPDmR00etFBk;-><init>(Lcom/android/server/backup/UserBackupManagerService$2;Ljava/lang/String;)V

    invoke-virtual {v9, v11}, Lcom/android/server/backup/internal/BackupHandler;->post(Ljava/lang/Runnable;)Z

    .line 1272
    .end local v3    # "packageName":Ljava/lang/String;
    add-int/lit8 v2, v2, 0x1

    goto :goto_a

    .line 1277
    :cond_e
    :goto_b
    return-void

    .line 1215
    .end local v10    # "uid":I
    .end local v16    # "action":Ljava/lang/String;
    .local v3, "action":Ljava/lang/String;
    :cond_f
    move-object/from16 v16, v3

    .line 1216
    .end local v3    # "action":Ljava/lang/String;
    .restart local v16    # "action":Ljava/lang/String;
    :goto_c
    return-void
.end method

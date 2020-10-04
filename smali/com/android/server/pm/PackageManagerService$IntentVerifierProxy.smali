.class Lcom/android/server/pm/PackageManagerService$IntentVerifierProxy;
.super Ljava/lang/Object;
.source "PackageManagerService.java"

# interfaces
.implements Lcom/android/server/pm/PackageManagerService$IntentFilterVerifier;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/pm/PackageManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "IntentVerifierProxy"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/android/server/pm/PackageManagerService$IntentFilterVerifier<",
        "Landroid/content/pm/PackageParser$ActivityIntentInfo;",
        ">;"
    }
.end annotation


# instance fields
.field private mContext:Landroid/content/Context;

.field private mCurrentIntentFilterVerifications:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mIntentFilterVerifierComponent:Landroid/content/ComponentName;

.field final synthetic this$0:Lcom/android/server/pm/PackageManagerService;


# direct methods
.method public constructor <init>(Lcom/android/server/pm/PackageManagerService;Landroid/content/Context;Landroid/content/ComponentName;)V
    .locals 0
    .param p2, "context"    # Landroid/content/Context;
    .param p3, "verifierComponent"    # Landroid/content/ComponentName;

    .line 1079
    iput-object p1, p0, Lcom/android/server/pm/PackageManagerService$IntentVerifierProxy;->this$0:Lcom/android/server/pm/PackageManagerService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1077
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/android/server/pm/PackageManagerService$IntentVerifierProxy;->mCurrentIntentFilterVerifications:Ljava/util/ArrayList;

    .line 1080
    iput-object p2, p0, Lcom/android/server/pm/PackageManagerService$IntentVerifierProxy;->mContext:Landroid/content/Context;

    .line 1081
    iput-object p3, p0, Lcom/android/server/pm/PackageManagerService$IntentVerifierProxy;->mIntentFilterVerifierComponent:Landroid/content/ComponentName;

    .line 1082
    return-void
.end method

.method private createDomainVerificationState(IIILjava/lang/String;)Lcom/android/server/pm/IntentFilterVerificationState;
    .locals 4
    .param p1, "verifierUid"    # I
    .param p2, "userId"    # I
    .param p3, "verificationId"    # I
    .param p4, "packageName"    # Ljava/lang/String;

    .line 1285
    new-instance v0, Lcom/android/server/pm/IntentFilterVerificationState;

    invoke-direct {v0, p1, p2, p4}, Lcom/android/server/pm/IntentFilterVerificationState;-><init>(IILjava/lang/String;)V

    .line 1287
    .local v0, "ivs":Lcom/android/server/pm/IntentFilterVerificationState;
    invoke-virtual {v0}, Lcom/android/server/pm/IntentFilterVerificationState;->setPendingState()V

    .line 1288
    iget-object v1, p0, Lcom/android/server/pm/PackageManagerService$IntentVerifierProxy;->this$0:Lcom/android/server/pm/PackageManagerService;

    iget-object v1, v1, Lcom/android/server/pm/PackageManagerService;->mPackages:Landroid/util/ArrayMap;

    monitor-enter v1

    .line 1289
    :try_start_0
    iget-object v2, p0, Lcom/android/server/pm/PackageManagerService$IntentVerifierProxy;->this$0:Lcom/android/server/pm/PackageManagerService;

    iget-object v2, v2, Lcom/android/server/pm/PackageManagerService;->mIntentFilterVerificationStates:Landroid/util/SparseArray;

    invoke-virtual {v2, p3, v0}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    .line 1290
    iget-object v2, p0, Lcom/android/server/pm/PackageManagerService$IntentVerifierProxy;->mCurrentIntentFilterVerifications:Ljava/util/ArrayList;

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1291
    monitor-exit v1

    .line 1292
    return-object v0

    .line 1291
    :catchall_0
    move-exception v2

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method

.method private getDefaultScheme()Ljava/lang/String;
    .locals 1

    .line 1085
    const-string v0, "https"

    return-object v0
.end method

.method private sendVerificationRequest(ILcom/android/server/pm/IntentFilterVerificationState;)V
    .locals 13
    .param p1, "verificationId"    # I
    .param p2, "ivs"    # Lcom/android/server/pm/IntentFilterVerificationState;

    .line 1118
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.INTENT_FILTER_NEEDS_VERIFICATION"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1119
    .local v0, "verificationIntent":Landroid/content/Intent;
    const-string v1, "android.content.pm.extra.INTENT_FILTER_VERIFICATION_ID"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1122
    nop

    .line 1124
    invoke-direct {p0}, Lcom/android/server/pm/PackageManagerService$IntentVerifierProxy;->getDefaultScheme()Ljava/lang/String;

    move-result-object v1

    .line 1122
    const-string v2, "android.content.pm.extra.INTENT_FILTER_VERIFICATION_URI_SCHEME"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1125
    nop

    .line 1127
    invoke-virtual {p2}, Lcom/android/server/pm/IntentFilterVerificationState;->getHostsString()Ljava/lang/String;

    move-result-object v1

    .line 1125
    const-string v2, "android.content.pm.extra.INTENT_FILTER_VERIFICATION_HOSTS"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1128
    nop

    .line 1130
    invoke-virtual {p2}, Lcom/android/server/pm/IntentFilterVerificationState;->getPackageName()Ljava/lang/String;

    move-result-object v1

    .line 1128
    const-string v2, "android.content.pm.extra.INTENT_FILTER_VERIFICATION_PACKAGE_NAME"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1131
    iget-object v1, p0, Lcom/android/server/pm/PackageManagerService$IntentVerifierProxy;->mIntentFilterVerifierComponent:Landroid/content/ComponentName;

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 1132
    const/high16 v1, 0x10000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 1134
    iget-object v1, p0, Lcom/android/server/pm/PackageManagerService$IntentVerifierProxy;->this$0:Lcom/android/server/pm/PackageManagerService;

    invoke-static {v1}, Lcom/android/server/pm/PackageManagerService;->access$000(Lcom/android/server/pm/PackageManagerService;)J

    move-result-wide v10

    .line 1135
    .local v10, "whitelistTimeout":J
    invoke-static {}, Landroid/app/BroadcastOptions;->makeBasic()Landroid/app/BroadcastOptions;

    move-result-object v1

    .line 1136
    .local v1, "options":Landroid/app/BroadcastOptions;
    invoke-virtual {v1, v10, v11}, Landroid/app/BroadcastOptions;->setTemporaryAppWhitelistDuration(J)V

    .line 1138
    iget-object v2, p0, Lcom/android/server/pm/PackageManagerService$IntentVerifierProxy;->this$0:Lcom/android/server/pm/PackageManagerService;

    invoke-static {v2}, Lcom/android/server/pm/PackageManagerService;->access$100(Lcom/android/server/pm/PackageManagerService;)Lcom/android/server/DeviceIdleController$LocalService;

    move-result-object v12

    .line 1139
    .local v12, "idleController":Lcom/android/server/DeviceIdleController$LocalService;
    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v3

    iget-object v2, p0, Lcom/android/server/pm/PackageManagerService$IntentVerifierProxy;->mIntentFilterVerifierComponent:Landroid/content/ComponentName;

    .line 1140
    invoke-virtual {v2}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v4

    .line 1139
    const/4 v7, 0x0

    const/4 v8, 0x1

    const-string v9, "intent filter verifier"

    move-object v2, v12

    move-wide v5, v10

    invoke-virtual/range {v2 .. v9}, Lcom/android/server/DeviceIdleController$LocalService;->addPowerSaveTempWhitelistApp(ILjava/lang/String;JIZLjava/lang/String;)V

    .line 1143
    iget-object v2, p0, Lcom/android/server/pm/PackageManagerService$IntentVerifierProxy;->mContext:Landroid/content/Context;

    sget-object v3, Landroid/os/UserHandle;->SYSTEM:Landroid/os/UserHandle;

    .line 1144
    invoke-virtual {v1}, Landroid/app/BroadcastOptions;->toBundle()Landroid/os/Bundle;

    move-result-object v4

    .line 1143
    const/4 v5, 0x0

    invoke-virtual {v2, v0, v3, v5, v4}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;Ljava/lang/String;Landroid/os/Bundle;)V

    .line 1145
    sget-boolean v2, Lcom/android/server/pm/PackageManagerService;->DEBUG_DOMAIN_VERIFICATION:Z

    if-eqz v2, :cond_0

    const-string v2, "PackageManager"

    const-string v3, "Sending IntentFilter verification broadcast"

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1147
    :cond_0
    return-void
.end method


# virtual methods
.method public bridge synthetic addOneIntentFilterVerification(IIILandroid/content/IntentFilter;Ljava/lang/String;)Z
    .locals 6

    .line 1074
    move-object v4, p4

    check-cast v4, Landroid/content/pm/PackageParser$ActivityIntentInfo;

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move-object v5, p5

    invoke-virtual/range {v0 .. v5}, Lcom/android/server/pm/PackageManagerService$IntentVerifierProxy;->addOneIntentFilterVerification(IIILandroid/content/pm/PackageParser$ActivityIntentInfo;Ljava/lang/String;)Z

    move-result p1

    return p1
.end method

.method public addOneIntentFilterVerification(IIILandroid/content/pm/PackageParser$ActivityIntentInfo;Ljava/lang/String;)Z
    .locals 3
    .param p1, "verifierUid"    # I
    .param p2, "userId"    # I
    .param p3, "verificationId"    # I
    .param p4, "filter"    # Landroid/content/pm/PackageParser$ActivityIntentInfo;
    .param p5, "packageName"    # Ljava/lang/String;

    .line 1268
    invoke-static {p4}, Lcom/android/server/pm/PackageManagerService;->access$200(Landroid/content/pm/PackageParser$ActivityIntentInfo;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1269
    const/4 v0, 0x0

    return v0

    .line 1271
    :cond_0
    iget-object v0, p0, Lcom/android/server/pm/PackageManagerService$IntentVerifierProxy;->this$0:Lcom/android/server/pm/PackageManagerService;

    iget-object v0, v0, Lcom/android/server/pm/PackageManagerService;->mIntentFilterVerificationStates:Landroid/util/SparseArray;

    invoke-virtual {v0, p3}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/pm/IntentFilterVerificationState;

    .line 1272
    .local v0, "ivs":Lcom/android/server/pm/IntentFilterVerificationState;
    if-nez v0, :cond_1

    .line 1273
    invoke-direct {p0, p1, p2, p3, p5}, Lcom/android/server/pm/PackageManagerService$IntentVerifierProxy;->createDomainVerificationState(IIILjava/lang/String;)Lcom/android/server/pm/IntentFilterVerificationState;

    move-result-object v0

    .line 1276
    :cond_1
    sget-boolean v1, Lcom/android/server/pm/PackageManagerService;->DEBUG_DOMAIN_VERIFICATION:Z

    if-eqz v1, :cond_2

    .line 1277
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Adding verification filter for "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ": "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "PackageManager"

    invoke-static {v2, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1279
    :cond_2
    invoke-virtual {v0, p4}, Lcom/android/server/pm/IntentFilterVerificationState;->addFilter(Landroid/content/pm/PackageParser$ActivityIntentInfo;)V

    .line 1280
    const/4 v1, 0x1

    return v1
.end method

.method public receiveVerificationResponse(I)V
    .locals 17
    .param p1, "verificationId"    # I

    .line 1150
    move-object/from16 v1, p0

    move/from16 v2, p1

    iget-object v0, v1, Lcom/android/server/pm/PackageManagerService$IntentVerifierProxy;->this$0:Lcom/android/server/pm/PackageManagerService;

    iget-object v0, v0, Lcom/android/server/pm/PackageManagerService;->mIntentFilterVerificationStates:Landroid/util/SparseArray;

    invoke-virtual {v0, v2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    move-object v3, v0

    check-cast v3, Lcom/android/server/pm/IntentFilterVerificationState;

    .line 1152
    .local v3, "ivs":Lcom/android/server/pm/IntentFilterVerificationState;
    invoke-virtual {v3}, Lcom/android/server/pm/IntentFilterVerificationState;->isVerified()Z

    move-result v4

    .line 1154
    .local v4, "verified":Z
    invoke-virtual {v3}, Lcom/android/server/pm/IntentFilterVerificationState;->getFilters()Ljava/util/ArrayList;

    move-result-object v5

    .line 1155
    .local v5, "filters":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/pm/PackageParser$ActivityIntentInfo;>;"
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v6

    .line 1156
    .local v6, "count":I
    sget-boolean v0, Lcom/android/server/pm/PackageManagerService;->DEBUG_DOMAIN_VERIFICATION:Z

    if-eqz v0, :cond_0

    .line 1157
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Received verification response "

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, " for "

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, " filters, verified="

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v7, "PackageManager"

    invoke-static {v7, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1160
    :cond_0
    const/4 v0, 0x0

    .local v0, "n":I
    :goto_0
    if-ge v0, v6, :cond_2

    .line 1161
    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/content/pm/PackageParser$ActivityIntentInfo;

    .line 1162
    .local v7, "filter":Landroid/content/pm/PackageParser$ActivityIntentInfo;
    invoke-virtual {v7, v4}, Landroid/content/pm/PackageParser$ActivityIntentInfo;->setVerified(Z)V

    .line 1164
    sget-boolean v8, Lcom/android/server/pm/PackageManagerService;->DEBUG_DOMAIN_VERIFICATION:Z

    if-eqz v8, :cond_1

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "IntentFilter "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Landroid/content/pm/PackageParser$ActivityIntentInfo;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v9, " verified with result:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v9, " and hosts:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1166
    invoke-virtual {v3}, Lcom/android/server/pm/IntentFilterVerificationState;->getHostsString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 1164
    const-string v9, "PackageManager"

    invoke-static {v9, v8}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1160
    .end local v7    # "filter":Landroid/content/pm/PackageParser$ActivityIntentInfo;
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1169
    .end local v0    # "n":I
    :cond_2
    iget-object v0, v1, Lcom/android/server/pm/PackageManagerService$IntentVerifierProxy;->this$0:Lcom/android/server/pm/PackageManagerService;

    iget-object v0, v0, Lcom/android/server/pm/PackageManagerService;->mIntentFilterVerificationStates:Landroid/util/SparseArray;

    invoke-virtual {v0, v2}, Landroid/util/SparseArray;->remove(I)V

    .line 1171
    invoke-virtual {v3}, Lcom/android/server/pm/IntentFilterVerificationState;->getPackageName()Ljava/lang/String;

    move-result-object v7

    .line 1174
    .local v7, "packageName":Ljava/lang/String;
    iget-object v0, v1, Lcom/android/server/pm/PackageManagerService$IntentVerifierProxy;->this$0:Lcom/android/server/pm/PackageManagerService;

    iget-object v8, v0, Lcom/android/server/pm/PackageManagerService;->mPackages:Landroid/util/ArrayMap;

    monitor-enter v8

    .line 1175
    :try_start_0
    iget-object v0, v1, Lcom/android/server/pm/PackageManagerService$IntentVerifierProxy;->this$0:Lcom/android/server/pm/PackageManagerService;

    iget-object v0, v0, Lcom/android/server/pm/PackageManagerService;->mSettings:Lcom/android/server/pm/Settings;

    invoke-virtual {v0, v7}, Lcom/android/server/pm/Settings;->getIntentFilterVerificationLPr(Ljava/lang/String;)Landroid/content/pm/IntentFilterVerificationInfo;

    move-result-object v0

    move-object v9, v0

    .line 1176
    .local v9, "ivi":Landroid/content/pm/IntentFilterVerificationInfo;
    monitor-exit v8
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 1177
    if-nez v9, :cond_3

    .line 1178
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "IntentFilterVerificationInfo not found for verificationId:"

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v8, " packageName:"

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v8, "PackageManager"

    invoke-static {v8, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1180
    return-void

    .line 1183
    :cond_3
    iget-object v0, v1, Lcom/android/server/pm/PackageManagerService$IntentVerifierProxy;->this$0:Lcom/android/server/pm/PackageManagerService;

    iget-object v10, v0, Lcom/android/server/pm/PackageManagerService;->mPackages:Landroid/util/ArrayMap;

    monitor-enter v10

    .line 1184
    const/4 v0, 0x2

    const/4 v8, 0x1

    if-eqz v4, :cond_4

    .line 1185
    :try_start_1
    invoke-virtual {v9, v0}, Landroid/content/pm/IntentFilterVerificationInfo;->setStatus(I)V

    goto :goto_1

    .line 1187
    :cond_4
    invoke-virtual {v9, v8}, Landroid/content/pm/IntentFilterVerificationInfo;->setStatus(I)V

    .line 1189
    :goto_1
    iget-object v11, v1, Lcom/android/server/pm/PackageManagerService$IntentVerifierProxy;->this$0:Lcom/android/server/pm/PackageManagerService;

    invoke-virtual {v11}, Lcom/android/server/pm/PackageManagerService;->scheduleWriteSettingsLocked()V

    .line 1191
    invoke-virtual {v3}, Lcom/android/server/pm/IntentFilterVerificationState;->getUserId()I

    move-result v11

    .line 1192
    .local v11, "userId":I
    const/4 v12, -0x1

    if-eq v11, v12, :cond_e

    .line 1193
    iget-object v12, v1, Lcom/android/server/pm/PackageManagerService$IntentVerifierProxy;->this$0:Lcom/android/server/pm/PackageManagerService;

    iget-object v12, v12, Lcom/android/server/pm/PackageManagerService;->mSettings:Lcom/android/server/pm/Settings;

    .line 1194
    invoke-virtual {v12, v7, v11}, Lcom/android/server/pm/Settings;->getIntentFilterVerificationStatusLPr(Ljava/lang/String;I)I

    move-result v12

    .line 1196
    .local v12, "userStatus":I
    const/4 v13, 0x0

    .line 1197
    .local v13, "updatedStatus":I
    const/4 v14, 0x0

    .line 1207
    .local v14, "needUpdate":Z
    if-eqz v12, :cond_a

    if-eq v12, v8, :cond_9

    if-eq v12, v0, :cond_5

    goto/16 :goto_3

    .line 1209
    :cond_5
    if-nez v4, :cond_c

    .line 1211
    invoke-static {}, Lcom/android/server/SystemConfig;->getInstance()Lcom/android/server/SystemConfig;

    move-result-object v0

    .line 1212
    .local v0, "systemConfig":Lcom/android/server/SystemConfig;
    invoke-virtual {v0}, Lcom/android/server/SystemConfig;->getLinkedApps()Landroid/util/ArraySet;

    move-result-object v8

    .line 1213
    .local v8, "packages":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    invoke-virtual {v8, v7}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result v15

    if-nez v15, :cond_7

    .line 1215
    const/4 v14, 0x1

    .line 1217
    sget-boolean v15, Lcom/android/server/pm/PackageManagerService;->DEBUG_DOMAIN_VERIFICATION:Z

    if-eqz v15, :cond_6

    .line 1218
    const-string v15, "PackageManager"

    move-object/from16 v16, v0

    .end local v0    # "systemConfig":Lcom/android/server/SystemConfig;
    .local v16, "systemConfig":Lcom/android/server/SystemConfig;
    const-string v0, "Formerly validated but now failing; demoting"

    invoke-static {v15, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 1217
    .end local v16    # "systemConfig":Lcom/android/server/SystemConfig;
    .restart local v0    # "systemConfig":Lcom/android/server/SystemConfig;
    :cond_6
    move-object/from16 v16, v0

    .end local v0    # "systemConfig":Lcom/android/server/SystemConfig;
    .restart local v16    # "systemConfig":Lcom/android/server/SystemConfig;
    goto :goto_2

    .line 1221
    .end local v16    # "systemConfig":Lcom/android/server/SystemConfig;
    .restart local v0    # "systemConfig":Lcom/android/server/SystemConfig;
    :cond_7
    move-object/from16 v16, v0

    .end local v0    # "systemConfig":Lcom/android/server/SystemConfig;
    .restart local v16    # "systemConfig":Lcom/android/server/SystemConfig;
    sget-boolean v0, Lcom/android/server/pm/PackageManagerService;->DEBUG_DOMAIN_VERIFICATION:Z

    if-eqz v0, :cond_8

    .line 1222
    const-string v0, "PackageManager"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Updating bundled package "

    invoke-virtual {v15, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " failed autoVerify, but sysconfig supersedes"

    invoke-virtual {v15, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1227
    .end local v8    # "packages":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    .end local v16    # "systemConfig":Lcom/android/server/SystemConfig;
    :cond_8
    :goto_2
    goto :goto_3

    .line 1244
    :cond_9
    if-eqz v4, :cond_c

    .line 1245
    const/4 v13, 0x2

    .line 1246
    const/4 v14, 0x1

    goto :goto_3

    .line 1232
    :cond_a
    if-eqz v4, :cond_b

    .line 1233
    const/4 v13, 0x2

    .line 1235
    :cond_b
    const/4 v14, 0x1

    .line 1236
    sget-boolean v0, Lcom/android/server/pm/PackageManagerService;->DEBUG_DOMAIN_VERIFICATION:Z

    if-eqz v0, :cond_c

    .line 1237
    const-string v0, "PackageManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Applying update; old="

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v8, " new="

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1254
    :cond_c
    :goto_3
    if-eqz v14, :cond_d

    .line 1255
    iget-object v0, v1, Lcom/android/server/pm/PackageManagerService$IntentVerifierProxy;->this$0:Lcom/android/server/pm/PackageManagerService;

    iget-object v0, v0, Lcom/android/server/pm/PackageManagerService;->mSettings:Lcom/android/server/pm/Settings;

    invoke-virtual {v0, v7, v13, v11}, Lcom/android/server/pm/Settings;->updateIntentFilterVerificationStatusLPw(Ljava/lang/String;II)Z

    .line 1257
    iget-object v0, v1, Lcom/android/server/pm/PackageManagerService$IntentVerifierProxy;->this$0:Lcom/android/server/pm/PackageManagerService;

    invoke-virtual {v0, v11}, Lcom/android/server/pm/PackageManagerService;->scheduleWritePackageRestrictionsLocked(I)V

    .line 1259
    .end local v12    # "userStatus":I
    .end local v13    # "updatedStatus":I
    .end local v14    # "needUpdate":Z
    :cond_d
    goto :goto_4

    .line 1260
    :cond_e
    const-string v0, "PackageManager"

    const-string v2, "autoVerify ignored when installing for all users"

    invoke-static {v0, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1262
    .end local v11    # "userId":I
    :goto_4
    monitor-exit v10

    .line 1263
    return-void

    .line 1262
    :catchall_0
    move-exception v0

    monitor-exit v10
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    .line 1176
    .end local v9    # "ivi":Landroid/content/pm/IntentFilterVerificationInfo;
    :catchall_1
    move-exception v0

    :try_start_2
    monitor-exit v8
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw v0
.end method

.method public startVerifications(I)V
    .locals 11
    .param p1, "userId"    # I

    .line 1091
    iget-object v0, p0, Lcom/android/server/pm/PackageManagerService$IntentVerifierProxy;->mCurrentIntentFilterVerifications:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 1092
    .local v0, "count":I
    const/4 v1, 0x0

    .local v1, "n":I
    :goto_0
    if-ge v1, v0, :cond_2

    .line 1093
    iget-object v2, p0, Lcom/android/server/pm/PackageManagerService$IntentVerifierProxy;->mCurrentIntentFilterVerifications:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    .line 1094
    .local v2, "verificationId":I
    iget-object v3, p0, Lcom/android/server/pm/PackageManagerService$IntentVerifierProxy;->this$0:Lcom/android/server/pm/PackageManagerService;

    iget-object v3, v3, Lcom/android/server/pm/PackageManagerService;->mIntentFilterVerificationStates:Landroid/util/SparseArray;

    .line 1095
    invoke-virtual {v3, v2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/pm/IntentFilterVerificationState;

    .line 1097
    .local v3, "ivs":Lcom/android/server/pm/IntentFilterVerificationState;
    invoke-virtual {v3}, Lcom/android/server/pm/IntentFilterVerificationState;->getPackageName()Ljava/lang/String;

    move-result-object v4

    .line 1099
    .local v4, "packageName":Ljava/lang/String;
    invoke-virtual {v3}, Lcom/android/server/pm/IntentFilterVerificationState;->getFilters()Ljava/util/ArrayList;

    move-result-object v5

    .line 1100
    .local v5, "filters":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/pm/PackageParser$ActivityIntentInfo;>;"
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v6

    .line 1101
    .local v6, "filterCount":I
    new-instance v7, Landroid/util/ArraySet;

    invoke-direct {v7}, Landroid/util/ArraySet;-><init>()V

    .line 1102
    .local v7, "domainsSet":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    const/4 v8, 0x0

    .local v8, "m":I
    :goto_1
    if-ge v8, v6, :cond_0

    .line 1103
    invoke-virtual {v5, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/content/pm/PackageParser$ActivityIntentInfo;

    .line 1104
    .local v9, "filter":Landroid/content/pm/PackageParser$ActivityIntentInfo;
    invoke-virtual {v9}, Landroid/content/pm/PackageParser$ActivityIntentInfo;->getHostsList()Ljava/util/ArrayList;

    move-result-object v10

    invoke-virtual {v7, v10}, Landroid/util/ArraySet;->addAll(Ljava/util/Collection;)Z

    .line 1102
    .end local v9    # "filter":Landroid/content/pm/PackageParser$ActivityIntentInfo;
    add-int/lit8 v8, v8, 0x1

    goto :goto_1

    .line 1106
    .end local v8    # "m":I
    :cond_0
    iget-object v8, p0, Lcom/android/server/pm/PackageManagerService$IntentVerifierProxy;->this$0:Lcom/android/server/pm/PackageManagerService;

    iget-object v8, v8, Lcom/android/server/pm/PackageManagerService;->mPackages:Landroid/util/ArrayMap;

    monitor-enter v8

    .line 1107
    :try_start_0
    iget-object v9, p0, Lcom/android/server/pm/PackageManagerService$IntentVerifierProxy;->this$0:Lcom/android/server/pm/PackageManagerService;

    iget-object v9, v9, Lcom/android/server/pm/PackageManagerService;->mSettings:Lcom/android/server/pm/Settings;

    invoke-virtual {v9, v4, v7}, Lcom/android/server/pm/Settings;->createIntentFilterVerificationIfNeededLPw(Ljava/lang/String;Landroid/util/ArraySet;)Landroid/content/pm/IntentFilterVerificationInfo;

    move-result-object v9

    if-eqz v9, :cond_1

    .line 1109
    iget-object v9, p0, Lcom/android/server/pm/PackageManagerService$IntentVerifierProxy;->this$0:Lcom/android/server/pm/PackageManagerService;

    invoke-virtual {v9}, Lcom/android/server/pm/PackageManagerService;->scheduleWriteSettingsLocked()V

    .line 1111
    :cond_1
    monitor-exit v8
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1112
    invoke-direct {p0, v2, v3}, Lcom/android/server/pm/PackageManagerService$IntentVerifierProxy;->sendVerificationRequest(ILcom/android/server/pm/IntentFilterVerificationState;)V

    .line 1092
    .end local v2    # "verificationId":I
    .end local v3    # "ivs":Lcom/android/server/pm/IntentFilterVerificationState;
    .end local v4    # "packageName":Ljava/lang/String;
    .end local v5    # "filters":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/pm/PackageParser$ActivityIntentInfo;>;"
    .end local v6    # "filterCount":I
    .end local v7    # "domainsSet":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1111
    .restart local v2    # "verificationId":I
    .restart local v3    # "ivs":Lcom/android/server/pm/IntentFilterVerificationState;
    .restart local v4    # "packageName":Ljava/lang/String;
    .restart local v5    # "filters":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/pm/PackageParser$ActivityIntentInfo;>;"
    .restart local v6    # "filterCount":I
    .restart local v7    # "domainsSet":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    :catchall_0
    move-exception v9

    :try_start_1
    monitor-exit v8
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v9

    .line 1114
    .end local v1    # "n":I
    .end local v2    # "verificationId":I
    .end local v3    # "ivs":Lcom/android/server/pm/IntentFilterVerificationState;
    .end local v4    # "packageName":Ljava/lang/String;
    .end local v5    # "filters":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/pm/PackageParser$ActivityIntentInfo;>;"
    .end local v6    # "filterCount":I
    .end local v7    # "domainsSet":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    :cond_2
    iget-object v1, p0, Lcom/android/server/pm/PackageManagerService$IntentVerifierProxy;->mCurrentIntentFilterVerifications:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 1115
    return-void
.end method

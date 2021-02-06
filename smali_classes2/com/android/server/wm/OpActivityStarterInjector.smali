.class public Lcom/android/server/wm/OpActivityStarterInjector;
.super Ljava/lang/Object;
.source "OpActivityStarterInjector.java"


# static fields
.field private static final DEBUG:Z

.field private static final FACTORY_MODE_PACKAGE_NAME:Ljava/lang/String; = "com.oneplus.factorymode"

.field public static final IS_LANDSCAPE_APP_ANIMATION_IMPROVEMENT_ENABLED:Z

.field private static final IS_PARALLEL_APP_FEATURED:Z

.field private static final TAG:Ljava/lang/String; = "Parallel App"

.field private static mSecrecyManagerInternal:Landroid/secrecy/SecrecyManagerInternal;

.field private static sOpActivityStarter:Lcom/android/server/wm/IOpActivityStarter;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .line 46
    sget-boolean v0, Landroid/os/Build;->DEBUG_ONEPLUS:Z

    sput-boolean v0, Lcom/android/server/wm/OpActivityStarterInjector;->DEBUG:Z

    .line 48
    const/4 v0, 0x1

    new-array v1, v0, [I

    const/16 v2, 0x1a

    const/4 v3, 0x0

    aput v2, v1, v3

    .line 49
    invoke-static {v1}, Landroid/util/OpFeatures;->isSupport([I)Z

    move-result v1

    sput-boolean v1, Lcom/android/server/wm/OpActivityStarterInjector;->IS_PARALLEL_APP_FEATURED:Z

    .line 57
    new-array v0, v0, [I

    const/16 v1, 0xb0

    aput v1, v0, v3

    .line 58
    invoke-static {v0}, Landroid/util/OpFeatures;->isSupport([I)Z

    move-result v0

    sput-boolean v0, Lcom/android/server/wm/OpActivityStarterInjector;->IS_LANDSCAPE_APP_ANIMATION_IMPROVEMENT_ENABLED:Z

    .line 57
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static checkParallelAppControl(Landroid/app/IApplicationThread;ILjava/lang/String;ILjava/lang/String;ILandroid/content/pm/ActivityInfo;Landroid/content/Intent;Lcom/android/server/wm/SafeActivityOptions;)Z
    .locals 12
    .param p0, "caller"    # Landroid/app/IApplicationThread;
    .param p1, "requestCode"    # I
    .param p2, "targetPkgName"    # Ljava/lang/String;
    .param p3, "targetUserId"    # I
    .param p4, "callingPackage"    # Ljava/lang/String;
    .param p5, "callingUserId"    # I
    .param p6, "aInfo"    # Landroid/content/pm/ActivityInfo;
    .param p7, "intent"    # Landroid/content/Intent;
    .param p8, "options"    # Lcom/android/server/wm/SafeActivityOptions;

    .line 126
    sget-boolean v0, Lcom/android/server/wm/OpActivityStarterInjector;->DEBUG:Z

    if-eqz v0, :cond_0

    .line 127
    const-string v0, "Parallel App"

    const-string v1, "call OpActivityStarterInjector.checkParallelAppControl()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 129
    :cond_0
    invoke-static {}, Lcom/android/server/wm/OpActivityStarterInjector;->initInstance()V

    .line 130
    sget-object v2, Lcom/android/server/wm/OpActivityStarterInjector;->sOpActivityStarter:Lcom/android/server/wm/IOpActivityStarter;

    move-object v3, p0

    move v4, p1

    move-object v5, p2

    move v6, p3

    move-object/from16 v7, p4

    move/from16 v8, p5

    move-object/from16 v9, p6

    move-object/from16 v10, p7

    move-object/from16 v11, p8

    invoke-interface/range {v2 .. v11}, Lcom/android/server/wm/IOpActivityStarter;->checkParallelAppControl(Landroid/app/IApplicationThread;ILjava/lang/String;ILjava/lang/String;ILandroid/content/pm/ActivityInfo;Landroid/content/Intent;Lcom/android/server/wm/SafeActivityOptions;)Z

    move-result v0

    return v0
.end method

.method public static getBackUserIdFromStoredCallingRelation(Ljava/lang/String;Ljava/lang/String;)I
    .locals 2
    .param p0, "targetPackageName"    # Ljava/lang/String;
    .param p1, "callingPackageName"    # Ljava/lang/String;

    .line 113
    sget-boolean v0, Lcom/android/server/wm/OpActivityStarterInjector;->DEBUG:Z

    if-eqz v0, :cond_0

    .line 114
    const-string v0, "Parallel App"

    const-string v1, "call OpActivityStarterInjector.getBackUserIdFromStoredCallingRelation()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 116
    :cond_0
    invoke-static {}, Lcom/android/server/wm/OpActivityStarterInjector;->initInstance()V

    .line 117
    sget-object v0, Lcom/android/server/wm/OpActivityStarterInjector;->sOpActivityStarter:Lcom/android/server/wm/IOpActivityStarter;

    invoke-interface {v0, p0, p1}, Lcom/android/server/wm/IOpActivityStarter;->getBackUserIdFromStoredCallingRelation(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public static getSourceIntent()Landroid/content/Intent;
    .locals 1

    .line 197
    sget-boolean v0, Lcom/android/server/wm/OpActivityStarterInjector;->IS_LANDSCAPE_APP_ANIMATION_IMPROVEMENT_ENABLED:Z

    if-eqz v0, :cond_0

    .line 198
    invoke-static {}, Lcom/android/server/wm/OpActivityStarterInjector;->initInstance()V

    .line 199
    sget-object v0, Lcom/android/server/wm/OpActivityStarterInjector;->sOpActivityStarter:Lcom/android/server/wm/IOpActivityStarter;

    invoke-interface {v0}, Lcom/android/server/wm/IOpActivityStarter;->getSourceIntent()Landroid/content/Intent;

    move-result-object v0

    return-object v0

    .line 201
    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public static getTargetPackageName(Landroid/content/pm/ActivityInfo;)Ljava/lang/String;
    .locals 1
    .param p0, "aInfo"    # Landroid/content/pm/ActivityInfo;

    .line 68
    if-eqz p0, :cond_1

    iget-object v0, p0, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    goto :goto_1

    :cond_1
    :goto_0
    const-string v0, ""

    :goto_1
    return-object v0
.end method

.method private static initInstance()V
    .locals 1

    .line 61
    sget-object v0, Lcom/android/server/wm/OpActivityStarterInjector;->sOpActivityStarter:Lcom/android/server/wm/IOpActivityStarter;

    if-nez v0, :cond_0

    .line 62
    sget-object v0, Lcom/oneplus/android/server/context/IOneplusContextStub$EStubType;->oneplus_activitystarter:Lcom/oneplus/android/server/context/IOneplusContextStub$EStubType;

    invoke-static {v0}, Lcom/oneplus/android/server/context/OneplusContextStub;->queryInterface(Lcom/oneplus/android/server/context/IOneplusContextStub$EStubType;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/wm/IOpActivityStarter;

    sput-object v0, Lcom/android/server/wm/OpActivityStarterInjector;->sOpActivityStarter:Lcom/android/server/wm/IOpActivityStarter;

    .line 65
    :cond_0
    return-void
.end method

.method public static isAllowToLaunch(ILandroid/content/pm/ActivityInfo;Ljava/lang/String;II)I
    .locals 2
    .param p0, "err"    # I
    .param p1, "aInfo"    # Landroid/content/pm/ActivityInfo;
    .param p2, "callingPackage"    # Ljava/lang/String;
    .param p3, "callingUid"    # I
    .param p4, "callingPid"    # I

    .line 166
    sget-object v0, Lcom/android/server/wm/OpActivityStarterInjector;->mSecrecyManagerInternal:Landroid/secrecy/SecrecyManagerInternal;

    if-nez v0, :cond_0

    .line 167
    const-class v0, Landroid/secrecy/SecrecyManagerInternal;

    invoke-static {v0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/secrecy/SecrecyManagerInternal;

    sput-object v0, Lcom/android/server/wm/OpActivityStarterInjector;->mSecrecyManagerInternal:Landroid/secrecy/SecrecyManagerInternal;

    .line 169
    :cond_0
    sget-object v0, Lcom/android/server/wm/OpActivityStarterInjector;->mSecrecyManagerInternal:Landroid/secrecy/SecrecyManagerInternal;

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    .line 170
    const-string v1, "sys.oem.decrypt"

    invoke-static {v1, v0}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-nez v0, :cond_1

    sget-object v0, Lcom/android/server/wm/OpActivityStarterInjector;->mSecrecyManagerInternal:Landroid/secrecy/SecrecyManagerInternal;

    .line 171
    invoke-virtual {v0, p1, p2, p3, p4}, Landroid/secrecy/SecrecyManagerInternal;->isInEncryptedAppList(Landroid/content/pm/ActivityInfo;Ljava/lang/String;II)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 173
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " is isInEncryptedAppList "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Parallel App"

    invoke-static {v1, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 174
    const/16 p0, 0x64

    .line 176
    :cond_1
    return p0
.end method

.method public static isNotAllowToLaunchFactoryMode(Landroid/content/pm/ActivityInfo;I)Z
    .locals 2
    .param p0, "aInfo"    # Landroid/content/pm/ActivityInfo;
    .param p1, "callingUid"    # I

    .line 183
    const/16 v0, 0x2710

    if-lt p1, v0, :cond_0

    if-eqz p0, :cond_0

    iget-object v0, p0, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    .line 184
    const-string v1, "com.oneplus.factorymode"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 183
    :goto_0
    return v0
.end method

.method public static maybeAddUserIdtoIntent(ILandroid/content/Intent;I)Landroid/content/Intent;
    .locals 2
    .param p0, "callingUid"    # I
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "destAppUserId"    # I

    .line 103
    sget-boolean v0, Lcom/android/server/wm/OpActivityStarterInjector;->DEBUG:Z

    if-eqz v0, :cond_0

    .line 104
    const-string v0, "Parallel App"

    const-string v1, "call OpActivityStarterInjector.maybeAddUserIdtoIntent()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 106
    :cond_0
    invoke-static {}, Lcom/android/server/wm/OpActivityStarterInjector;->initInstance()V

    .line 107
    sget-object v0, Lcom/android/server/wm/OpActivityStarterInjector;->sOpActivityStarter:Lcom/android/server/wm/IOpActivityStarter;

    invoke-interface {v0, p0, p1, p2}, Lcom/android/server/wm/IOpActivityStarter;->maybeAddUserIdtoIntent(ILandroid/content/Intent;I)Landroid/content/Intent;

    move-result-object v0

    return-object v0
.end method

.method public static resolveIntentActivity(Landroid/content/Intent;ILcom/android/server/wm/ActivityStackSupervisor;II)Landroid/content/pm/ActivityInfo;
    .locals 8
    .param p0, "intent"    # Landroid/content/Intent;
    .param p1, "resolveUserId"    # I
    .param p2, "acitivityStackSupervisor"    # Lcom/android/server/wm/ActivityStackSupervisor;
    .param p3, "startFlags"    # I
    .param p4, "callingUid"    # I

    .line 84
    sget-boolean v0, Lcom/android/server/wm/OpActivityStarterInjector;->DEBUG:Z

    if-eqz v0, :cond_0

    .line 85
    const-string v0, "Parallel App"

    const-string v1, "call OpActivityStarterInjector.resolveIntentActivity()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 87
    :cond_0
    invoke-static {}, Lcom/android/server/wm/OpActivityStarterInjector;->initInstance()V

    .line 88
    sget-object v2, Lcom/android/server/wm/OpActivityStarterInjector;->sOpActivityStarter:Lcom/android/server/wm/IOpActivityStarter;

    move-object v3, p0

    move v4, p1

    move-object v5, p2

    move v6, p3

    move v7, p4

    invoke-interface/range {v2 .. v7}, Lcom/android/server/wm/IOpActivityStarter;->resolveIntentActivity(Landroid/content/Intent;ILcom/android/server/wm/ActivityStackSupervisor;II)Landroid/content/pm/ActivityInfo;

    move-result-object v0

    return-object v0
.end method

.method public static resolveIntentParallel(Lcom/android/server/wm/ActivityStackSupervisor;Landroid/content/Intent;Ljava/lang/String;IIILandroid/content/pm/ResolveInfo;I)Landroid/content/pm/ResolveInfo;
    .locals 14
    .param p0, "mSupervisor"    # Lcom/android/server/wm/ActivityStackSupervisor;
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "resolvedType"    # Ljava/lang/String;
    .param p3, "callingUid"    # I
    .param p4, "realCallingUid"    # I
    .param p5, "userId"    # I
    .param p6, "rInfo"    # Landroid/content/pm/ResolveInfo;
    .param p7, "filterCallingUid"    # I

    .line 139
    move/from16 v1, p5

    move-object/from16 v0, p6

    sget-boolean v2, Lcom/android/server/wm/OpActivityStarterInjector;->IS_PARALLEL_APP_FEATURED:Z

    if-eqz v2, :cond_3

    .line 141
    const/16 v2, 0x3e7

    if-ne v1, v2, :cond_0

    if-eqz v0, :cond_0

    iget-object v3, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    if-eqz v3, :cond_0

    iget-object v3, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v3, v3, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    .line 142
    const-string v4, "com.android.settings.FallbackHome"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 143
    const/4 v0, 0x0

    move-object v3, v0

    .end local p6    # "rInfo":Landroid/content/pm/ResolveInfo;
    .local v0, "rInfo":Landroid/content/pm/ResolveInfo;
    goto :goto_0

    .line 145
    .end local v0    # "rInfo":Landroid/content/pm/ResolveInfo;
    .restart local p6    # "rInfo":Landroid/content/pm/ResolveInfo;
    :cond_0
    move-object v3, v0

    .end local p6    # "rInfo":Landroid/content/pm/ResolveInfo;
    .local v3, "rInfo":Landroid/content/pm/ResolveInfo;
    :goto_0
    if-nez v3, :cond_2

    .line 146
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v4

    .line 148
    .local v4, "identity":J
    if-ne v1, v2, :cond_1

    .line 149
    :try_start_0
    const-string v0, "Parallel App"

    const-string v2, "startActivity resolve intent to owner"

    invoke-static {v0, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 150
    const/4 v9, 0x0

    const/4 v10, 0x0

    .line 151
    move/from16 v2, p3

    move/from16 v12, p4

    move/from16 v13, p7

    :try_start_1
    invoke-static {v2, v12, v13}, Lcom/android/server/wm/ActivityStarter;->computeResolveFilterUid(III)I

    move-result v11

    .line 150
    move-object v6, p0

    move-object v7, p1

    move-object/from16 v8, p2

    invoke-virtual/range {v6 .. v11}, Lcom/android/server/wm/ActivityStackSupervisor;->resolveIntent(Landroid/content/Intent;Ljava/lang/String;III)Landroid/content/pm/ResolveInfo;

    move-result-object v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .end local v3    # "rInfo":Landroid/content/pm/ResolveInfo;
    .restart local v0    # "rInfo":Landroid/content/pm/ResolveInfo;
    goto :goto_2

    .line 155
    .end local v0    # "rInfo":Landroid/content/pm/ResolveInfo;
    .restart local v3    # "rInfo":Landroid/content/pm/ResolveInfo;
    :catchall_0
    move-exception v0

    goto :goto_1

    :catchall_1
    move-exception v0

    move/from16 v2, p3

    move/from16 v12, p4

    move/from16 v13, p7

    :goto_1
    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 156
    throw v0

    .line 148
    :cond_1
    move/from16 v2, p3

    move/from16 v12, p4

    move/from16 v13, p7

    move-object v0, v3

    .line 155
    .end local v3    # "rInfo":Landroid/content/pm/ResolveInfo;
    .restart local v0    # "rInfo":Landroid/content/pm/ResolveInfo;
    :goto_2
    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 156
    goto :goto_3

    .line 145
    .end local v0    # "rInfo":Landroid/content/pm/ResolveInfo;
    .end local v4    # "identity":J
    .restart local v3    # "rInfo":Landroid/content/pm/ResolveInfo;
    :cond_2
    move/from16 v2, p3

    move/from16 v12, p4

    move/from16 v13, p7

    move-object v0, v3

    goto :goto_3

    .line 139
    .end local v3    # "rInfo":Landroid/content/pm/ResolveInfo;
    .restart local p6    # "rInfo":Landroid/content/pm/ResolveInfo;
    :cond_3
    move/from16 v2, p3

    move/from16 v12, p4

    move/from16 v13, p7

    .line 159
    .end local p6    # "rInfo":Landroid/content/pm/ResolveInfo;
    .restart local v0    # "rInfo":Landroid/content/pm/ResolveInfo;
    :goto_3
    return-object v0
.end method

.method public static setSourceIntent(Landroid/content/Intent;)V
    .locals 1
    .param p0, "intent"    # Landroid/content/Intent;

    .line 205
    sget-boolean v0, Lcom/android/server/wm/OpActivityStarterInjector;->IS_LANDSCAPE_APP_ANIMATION_IMPROVEMENT_ENABLED:Z

    if-eqz v0, :cond_0

    .line 206
    invoke-static {}, Lcom/android/server/wm/OpActivityStarterInjector;->initInstance()V

    .line 207
    sget-object v0, Lcom/android/server/wm/OpActivityStarterInjector;->sOpActivityStarter:Lcom/android/server/wm/IOpActivityStarter;

    invoke-interface {v0, p0}, Lcom/android/server/wm/IOpActivityStarter;->setSourceIntent(Landroid/content/Intent;)V

    .line 209
    :cond_0
    return-void
.end method

.method public static storeCallingRelation(Ljava/lang/String;Ljava/lang/String;I)V
    .locals 2
    .param p0, "targetPackageName"    # Ljava/lang/String;
    .param p1, "callingPackageName"    # Ljava/lang/String;
    .param p2, "callingUserId"    # I

    .line 73
    sget-boolean v0, Lcom/android/server/wm/OpActivityStarterInjector;->DEBUG:Z

    if-eqz v0, :cond_0

    .line 74
    const-string v0, "Parallel App"

    const-string v1, "call OpActivityStarterInjector.storeCallingRelation()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 76
    :cond_0
    invoke-static {}, Lcom/android/server/wm/OpActivityStarterInjector;->initInstance()V

    .line 77
    sget-object v0, Lcom/android/server/wm/OpActivityStarterInjector;->sOpActivityStarter:Lcom/android/server/wm/IOpActivityStarter;

    invoke-interface {v0, p0, p1, p2}, Lcom/android/server/wm/IOpActivityStarter;->storeCallingRelation(Ljava/lang/String;Ljava/lang/String;I)V

    .line 79
    return-void
.end method

.method public static toChooserActivity(Landroid/content/Intent;I)Landroid/content/Intent;
    .locals 2
    .param p0, "intent"    # Landroid/content/Intent;
    .param p1, "requestCode"    # I

    .line 94
    sget-boolean v0, Lcom/android/server/wm/OpActivityStarterInjector;->DEBUG:Z

    if-eqz v0, :cond_0

    .line 95
    const-string v0, "Parallel App"

    const-string v1, "call OpActivityStarterInjector.toChooserActivity()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 97
    :cond_0
    invoke-static {}, Lcom/android/server/wm/OpActivityStarterInjector;->initInstance()V

    .line 98
    sget-object v0, Lcom/android/server/wm/OpActivityStarterInjector;->sOpActivityStarter:Lcom/android/server/wm/IOpActivityStarter;

    invoke-interface {v0, p0, p1}, Lcom/android/server/wm/IOpActivityStarter;->toChooserActivity(Landroid/content/Intent;I)Landroid/content/Intent;

    move-result-object v0

    return-object v0
.end method

.method public static updateOutActivity(Lcom/android/server/wm/ActivityRecord;Lcom/android/server/wm/ActivityRecord;)Lcom/android/server/wm/ActivityRecord;
    .locals 1
    .param p0, "outActivity"    # Lcom/android/server/wm/ActivityRecord;
    .param p1, "r"    # Lcom/android/server/wm/ActivityRecord;

    .line 189
    sget-boolean v0, Lcom/android/server/wm/OpActivityStarterInjector;->IS_LANDSCAPE_APP_ANIMATION_IMPROVEMENT_ENABLED:Z

    if-eqz v0, :cond_0

    .line 190
    invoke-static {}, Lcom/android/server/wm/OpActivityStarterInjector;->initInstance()V

    .line 191
    sget-object v0, Lcom/android/server/wm/OpActivityStarterInjector;->sOpActivityStarter:Lcom/android/server/wm/IOpActivityStarter;

    invoke-interface {v0, p0, p1}, Lcom/android/server/wm/IOpActivityStarter;->updateOutActivity(Lcom/android/server/wm/ActivityRecord;Lcom/android/server/wm/ActivityRecord;)Lcom/android/server/wm/ActivityRecord;

    move-result-object v0

    return-object v0

    .line 193
    :cond_0
    return-object p0
.end method

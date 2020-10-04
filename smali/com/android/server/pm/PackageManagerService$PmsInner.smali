.class public final Lcom/android/server/pm/PackageManagerService$PmsInner;
.super Ljava/lang/Object;
.source "PackageManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/pm/PackageManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "PmsInner"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/pm/PackageManagerService;


# direct methods
.method public constructor <init>(Lcom/android/server/pm/PackageManagerService;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/server/pm/PackageManagerService;

    .line 26585
    iput-object p1, p0, Lcom/android/server/pm/PackageManagerService$PmsInner;->this$0:Lcom/android/server/pm/PackageManagerService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createInstallArgsForExisting(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)Lcom/android/server/pm/PackageManagerService$InstallArgs;
    .locals 1
    .param p1, "codePath"    # Ljava/lang/String;
    .param p2, "resourcePath"    # Ljava/lang/String;
    .param p3, "instructionSets"    # [Ljava/lang/String;

    .line 26588
    iget-object v0, p0, Lcom/android/server/pm/PackageManagerService$PmsInner;->this$0:Lcom/android/server/pm/PackageManagerService;

    invoke-static {v0, p1, p2, p3}, Lcom/android/server/pm/PackageManagerService;->access$8800(Lcom/android/server/pm/PackageManagerService;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)Lcom/android/server/pm/PackageManagerService$InstallArgs;

    move-result-object v0

    return-object v0
.end method

.method public deletePackageX(Ljava/lang/String;JII)V
    .locals 9
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "versionCode"    # J
    .param p4, "userId"    # I
    .param p5, "deleteFlags"    # I

    .line 26602
    iget-object v0, p0, Lcom/android/server/pm/PackageManagerService$PmsInner;->this$0:Lcom/android/server/pm/PackageManagerService;

    iget-object v0, v0, Lcom/android/server/pm/PackageManagerService;->mHandler:Lcom/android/server/pm/PackageManagerService$PackageHandler;

    new-instance v8, Lcom/android/server/pm/-$$Lambda$PackageManagerService$PmsInner$g_V68XetX7Bf2Wrc3aNj9_nv3dA;

    move-object v1, v8

    move-object v2, p0

    move-object v3, p1

    move-wide v4, p2

    move v6, p4

    move v7, p5

    invoke-direct/range {v1 .. v7}, Lcom/android/server/pm/-$$Lambda$PackageManagerService$PmsInner$g_V68XetX7Bf2Wrc3aNj9_nv3dA;-><init>(Lcom/android/server/pm/PackageManagerService$PmsInner;Ljava/lang/String;JII)V

    invoke-virtual {v0, v8}, Lcom/android/server/pm/PackageManagerService$PackageHandler;->post(Ljava/lang/Runnable;)Z

    .line 26606
    return-void
.end method

.method public synthetic lambda$deletePackageX$0$PackageManagerService$PmsInner(Ljava/lang/String;JII)V
    .locals 6
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "versionCode"    # J
    .param p4, "userId"    # I
    .param p5, "deleteFlags"    # I

    .line 26603
    iget-object v0, p0, Lcom/android/server/pm/PackageManagerService$PmsInner;->this$0:Lcom/android/server/pm/PackageManagerService;

    move-object v1, p1

    move-wide v2, p2

    move v4, p4

    move v5, p5

    invoke-virtual/range {v0 .. v5}, Lcom/android/server/pm/PackageManagerService;->deletePackageX(Ljava/lang/String;JII)I

    .line 26605
    return-void
.end method

.method public queryIntentActivitiesInternal(Landroid/content/Intent;Ljava/lang/String;II)Ljava/util/List;
    .locals 1
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "resolvedType"    # Ljava/lang/String;
    .param p3, "flags"    # I
    .param p4, "userId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Intent;",
            "Ljava/lang/String;",
            "II)",
            "Ljava/util/List<",
            "Landroid/content/pm/ResolveInfo;",
            ">;"
        }
    .end annotation

    .line 26612
    iget-object v0, p0, Lcom/android/server/pm/PackageManagerService$PmsInner;->this$0:Lcom/android/server/pm/PackageManagerService;

    invoke-static {v0, p1, p2, p3, p4}, Lcom/android/server/pm/PackageManagerService;->access$9100(Lcom/android/server/pm/PackageManagerService;Landroid/content/Intent;Ljava/lang/String;II)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public resetUserChangesToRuntimePermissionsAndFlagsLPw(I)V
    .locals 1
    .param p1, "userId"    # I

    .line 26597
    iget-object v0, p0, Lcom/android/server/pm/PackageManagerService$PmsInner;->this$0:Lcom/android/server/pm/PackageManagerService;

    invoke-static {v0, p1}, Lcom/android/server/pm/PackageManagerService;->access$9000(Lcom/android/server/pm/PackageManagerService;I)V

    .line 26598
    return-void
.end method

.method public scanDirLI(Ljava/io/File;IIJ)V
    .locals 6
    .param p1, "scanDir"    # Ljava/io/File;
    .param p2, "parseFlags"    # I
    .param p3, "scanFlags"    # I
    .param p4, "currentTime"    # J

    .line 26593
    iget-object v0, p0, Lcom/android/server/pm/PackageManagerService$PmsInner;->this$0:Lcom/android/server/pm/PackageManagerService;

    move-object v1, p1

    move v2, p2

    move v3, p3

    move-wide v4, p4

    invoke-static/range {v0 .. v5}, Lcom/android/server/pm/PackageManagerService;->access$8900(Lcom/android/server/pm/PackageManagerService;Ljava/io/File;IIJ)V

    .line 26594
    return-void
.end method

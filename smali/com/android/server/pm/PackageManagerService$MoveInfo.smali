.class Lcom/android/server/pm/PackageManagerService$MoveInfo;
.super Ljava/lang/Object;
.source "PackageManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/pm/PackageManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "MoveInfo"
.end annotation


# instance fields
.field final appId:I

.field final fromCodePath:Ljava/lang/String;

.field final fromUuid:Ljava/lang/String;

.field final moveId:I

.field final packageName:Ljava/lang/String;

.field final seinfo:Ljava/lang/String;

.field final targetSdkVersion:I

.field final toUuid:Ljava/lang/String;


# direct methods
.method public constructor <init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;ILjava/lang/String;)V
    .locals 0
    .param p1, "moveId"    # I
    .param p2, "fromUuid"    # Ljava/lang/String;
    .param p3, "toUuid"    # Ljava/lang/String;
    .param p4, "packageName"    # Ljava/lang/String;
    .param p5, "appId"    # I
    .param p6, "seinfo"    # Ljava/lang/String;
    .param p7, "targetSdkVersion"    # I
    .param p8, "fromCodePath"    # Ljava/lang/String;

    .line 15138
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 15139
    iput p1, p0, Lcom/android/server/pm/PackageManagerService$MoveInfo;->moveId:I

    .line 15140
    iput-object p2, p0, Lcom/android/server/pm/PackageManagerService$MoveInfo;->fromUuid:Ljava/lang/String;

    .line 15141
    iput-object p3, p0, Lcom/android/server/pm/PackageManagerService$MoveInfo;->toUuid:Ljava/lang/String;

    .line 15142
    iput-object p4, p0, Lcom/android/server/pm/PackageManagerService$MoveInfo;->packageName:Ljava/lang/String;

    .line 15143
    iput p5, p0, Lcom/android/server/pm/PackageManagerService$MoveInfo;->appId:I

    .line 15144
    iput-object p6, p0, Lcom/android/server/pm/PackageManagerService$MoveInfo;->seinfo:Ljava/lang/String;

    .line 15145
    iput p7, p0, Lcom/android/server/pm/PackageManagerService$MoveInfo;->targetSdkVersion:I

    .line 15146
    iput-object p8, p0, Lcom/android/server/pm/PackageManagerService$MoveInfo;->fromCodePath:Ljava/lang/String;

    .line 15147
    return-void
.end method

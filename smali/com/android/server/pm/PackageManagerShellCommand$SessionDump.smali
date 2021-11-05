.class Lcom/android/server/pm/PackageManagerShellCommand$SessionDump;
.super Ljava/lang/Object;
.source "PackageManagerShellCommand.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/pm/PackageManagerShellCommand;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "SessionDump"
.end annotation


# instance fields
.field onlyParent:Z

.field onlyReady:Z

.field onlySessionId:Z


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 965
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/pm/PackageManagerShellCommand$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/android/server/pm/PackageManagerShellCommand$1;

    .line 965
    invoke-direct {p0}, Lcom/android/server/pm/PackageManagerShellCommand$SessionDump;-><init>()V

    return-void
.end method

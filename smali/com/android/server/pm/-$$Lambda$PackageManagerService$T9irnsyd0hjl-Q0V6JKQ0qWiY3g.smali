.class public final synthetic Lcom/android/server/pm/-$$Lambda$PackageManagerService$T9irnsyd0hjl-Q0V6JKQ0qWiY3g;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic f$0:Lcom/android/server/pm/PackageManagerService;

.field private final synthetic f$1:I

.field private final synthetic f$2:I


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/pm/PackageManagerService;II)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/pm/-$$Lambda$PackageManagerService$T9irnsyd0hjl-Q0V6JKQ0qWiY3g;->f$0:Lcom/android/server/pm/PackageManagerService;

    iput p2, p0, Lcom/android/server/pm/-$$Lambda$PackageManagerService$T9irnsyd0hjl-Q0V6JKQ0qWiY3g;->f$1:I

    iput p3, p0, Lcom/android/server/pm/-$$Lambda$PackageManagerService$T9irnsyd0hjl-Q0V6JKQ0qWiY3g;->f$2:I

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget-object v0, p0, Lcom/android/server/pm/-$$Lambda$PackageManagerService$T9irnsyd0hjl-Q0V6JKQ0qWiY3g;->f$0:Lcom/android/server/pm/PackageManagerService;

    iget v1, p0, Lcom/android/server/pm/-$$Lambda$PackageManagerService$T9irnsyd0hjl-Q0V6JKQ0qWiY3g;->f$1:I

    iget v2, p0, Lcom/android/server/pm/-$$Lambda$PackageManagerService$T9irnsyd0hjl-Q0V6JKQ0qWiY3g;->f$2:I

    invoke-virtual {v0, v1, v2}, Lcom/android/server/pm/PackageManagerService;->lambda$resetUserChangesToRuntimePermissionsAndFlagsLPw$22$PackageManagerService(II)V

    return-void
.end method

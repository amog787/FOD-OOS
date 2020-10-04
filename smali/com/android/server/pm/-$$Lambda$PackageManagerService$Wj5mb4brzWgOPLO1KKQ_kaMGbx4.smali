.class public final synthetic Lcom/android/server/pm/-$$Lambda$PackageManagerService$Wj5mb4brzWgOPLO1KKQ_kaMGbx4;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Lcom/android/internal/util/FunctionalUtils$ThrowingRunnable;


# instance fields
.field private final synthetic f$0:Lcom/android/server/pm/PackageManagerService;

.field private final synthetic f$1:[Ljava/lang/String;

.field private final synthetic f$2:I


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/pm/PackageManagerService;[Ljava/lang/String;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/pm/-$$Lambda$PackageManagerService$Wj5mb4brzWgOPLO1KKQ_kaMGbx4;->f$0:Lcom/android/server/pm/PackageManagerService;

    iput-object p2, p0, Lcom/android/server/pm/-$$Lambda$PackageManagerService$Wj5mb4brzWgOPLO1KKQ_kaMGbx4;->f$1:[Ljava/lang/String;

    iput p3, p0, Lcom/android/server/pm/-$$Lambda$PackageManagerService$Wj5mb4brzWgOPLO1KKQ_kaMGbx4;->f$2:I

    return-void
.end method


# virtual methods
.method public final runOrThrow()V
    .locals 3

    iget-object v0, p0, Lcom/android/server/pm/-$$Lambda$PackageManagerService$Wj5mb4brzWgOPLO1KKQ_kaMGbx4;->f$0:Lcom/android/server/pm/PackageManagerService;

    iget-object v1, p0, Lcom/android/server/pm/-$$Lambda$PackageManagerService$Wj5mb4brzWgOPLO1KKQ_kaMGbx4;->f$1:[Ljava/lang/String;

    iget v2, p0, Lcom/android/server/pm/-$$Lambda$PackageManagerService$Wj5mb4brzWgOPLO1KKQ_kaMGbx4;->f$2:I

    invoke-virtual {v0, v1, v2}, Lcom/android/server/pm/PackageManagerService;->lambda$revokeDefaultPermissionsFromDisabledTelephonyDataServices$37$PackageManagerService([Ljava/lang/String;I)V

    return-void
.end method

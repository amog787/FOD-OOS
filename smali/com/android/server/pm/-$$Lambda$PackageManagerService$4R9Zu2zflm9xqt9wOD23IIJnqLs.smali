.class public final synthetic Lcom/android/server/pm/-$$Lambda$PackageManagerService$4R9Zu2zflm9xqt9wOD23IIJnqLs;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic f$0:Lcom/android/server/pm/PackageManagerService;

.field private final synthetic f$1:[I

.field private final synthetic f$2:Ljava/lang/String;

.field private final synthetic f$3:Z


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/pm/PackageManagerService;[ILjava/lang/String;Z)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/pm/-$$Lambda$PackageManagerService$4R9Zu2zflm9xqt9wOD23IIJnqLs;->f$0:Lcom/android/server/pm/PackageManagerService;

    iput-object p2, p0, Lcom/android/server/pm/-$$Lambda$PackageManagerService$4R9Zu2zflm9xqt9wOD23IIJnqLs;->f$1:[I

    iput-object p3, p0, Lcom/android/server/pm/-$$Lambda$PackageManagerService$4R9Zu2zflm9xqt9wOD23IIJnqLs;->f$2:Ljava/lang/String;

    iput-boolean p4, p0, Lcom/android/server/pm/-$$Lambda$PackageManagerService$4R9Zu2zflm9xqt9wOD23IIJnqLs;->f$3:Z

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    iget-object v0, p0, Lcom/android/server/pm/-$$Lambda$PackageManagerService$4R9Zu2zflm9xqt9wOD23IIJnqLs;->f$0:Lcom/android/server/pm/PackageManagerService;

    iget-object v1, p0, Lcom/android/server/pm/-$$Lambda$PackageManagerService$4R9Zu2zflm9xqt9wOD23IIJnqLs;->f$1:[I

    iget-object v2, p0, Lcom/android/server/pm/-$$Lambda$PackageManagerService$4R9Zu2zflm9xqt9wOD23IIJnqLs;->f$2:Ljava/lang/String;

    iget-boolean v3, p0, Lcom/android/server/pm/-$$Lambda$PackageManagerService$4R9Zu2zflm9xqt9wOD23IIJnqLs;->f$3:Z

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/server/pm/PackageManagerService;->lambda$sendPackageAddedForNewUsers$9$PackageManagerService([ILjava/lang/String;Z)V

    return-void
.end method

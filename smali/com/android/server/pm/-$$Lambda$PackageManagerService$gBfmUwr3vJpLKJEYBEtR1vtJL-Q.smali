.class public final synthetic Lcom/android/server/pm/-$$Lambda$PackageManagerService$gBfmUwr3vJpLKJEYBEtR1vtJL-Q;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic f$0:Lcom/android/server/pm/PackageManagerService;

.field private final synthetic f$1:Ljava/lang/String;

.field private final synthetic f$2:I

.field private final synthetic f$3:Ljava/lang/String;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/pm/PackageManagerService;Ljava/lang/String;ILjava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/pm/-$$Lambda$PackageManagerService$gBfmUwr3vJpLKJEYBEtR1vtJL-Q;->f$0:Lcom/android/server/pm/PackageManagerService;

    iput-object p2, p0, Lcom/android/server/pm/-$$Lambda$PackageManagerService$gBfmUwr3vJpLKJEYBEtR1vtJL-Q;->f$1:Ljava/lang/String;

    iput p3, p0, Lcom/android/server/pm/-$$Lambda$PackageManagerService$gBfmUwr3vJpLKJEYBEtR1vtJL-Q;->f$2:I

    iput-object p4, p0, Lcom/android/server/pm/-$$Lambda$PackageManagerService$gBfmUwr3vJpLKJEYBEtR1vtJL-Q;->f$3:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    iget-object v0, p0, Lcom/android/server/pm/-$$Lambda$PackageManagerService$gBfmUwr3vJpLKJEYBEtR1vtJL-Q;->f$0:Lcom/android/server/pm/PackageManagerService;

    iget-object v1, p0, Lcom/android/server/pm/-$$Lambda$PackageManagerService$gBfmUwr3vJpLKJEYBEtR1vtJL-Q;->f$1:Ljava/lang/String;

    iget v2, p0, Lcom/android/server/pm/-$$Lambda$PackageManagerService$gBfmUwr3vJpLKJEYBEtR1vtJL-Q;->f$2:I

    iget-object v3, p0, Lcom/android/server/pm/-$$Lambda$PackageManagerService$gBfmUwr3vJpLKJEYBEtR1vtJL-Q;->f$3:Ljava/lang/String;

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/server/pm/PackageManagerService;->lambda$notifyFirstLaunch$14$PackageManagerService(Ljava/lang/String;ILjava/lang/String;)V

    return-void
.end method

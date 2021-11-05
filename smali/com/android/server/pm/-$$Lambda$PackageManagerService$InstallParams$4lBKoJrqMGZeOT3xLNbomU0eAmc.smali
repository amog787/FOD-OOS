.class public final synthetic Lcom/android/server/pm/-$$Lambda$PackageManagerService$InstallParams$4lBKoJrqMGZeOT3xLNbomU0eAmc;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Landroid/content/pm/parsing/result/ParseInput$Callback;


# instance fields
.field public final synthetic f$0:Lcom/android/server/pm/PackageManagerService$InstallParams;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/pm/PackageManagerService$InstallParams;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/pm/-$$Lambda$PackageManagerService$InstallParams$4lBKoJrqMGZeOT3xLNbomU0eAmc;->f$0:Lcom/android/server/pm/PackageManagerService$InstallParams;

    return-void
.end method


# virtual methods
.method public final isChangeEnabled(JLjava/lang/String;I)Z
    .locals 1

    iget-object v0, p0, Lcom/android/server/pm/-$$Lambda$PackageManagerService$InstallParams$4lBKoJrqMGZeOT3xLNbomU0eAmc;->f$0:Lcom/android/server/pm/PackageManagerService$InstallParams;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/android/server/pm/PackageManagerService$InstallParams;->lambda$handleReturnCode$0$PackageManagerService$InstallParams(JLjava/lang/String;I)Z

    move-result p1

    return p1
.end method

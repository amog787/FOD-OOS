.class public final synthetic Lcom/android/server/pm/-$$Lambda$PackageManagerService$QEXaCTQ54nCy5aHUAa6mkt0WtpM;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/android/server/pm/PackageManagerService;

.field public final synthetic f$1:Ljava/lang/String;

.field public final synthetic f$2:I


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/pm/PackageManagerService;Ljava/lang/String;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/pm/-$$Lambda$PackageManagerService$QEXaCTQ54nCy5aHUAa6mkt0WtpM;->f$0:Lcom/android/server/pm/PackageManagerService;

    iput-object p2, p0, Lcom/android/server/pm/-$$Lambda$PackageManagerService$QEXaCTQ54nCy5aHUAa6mkt0WtpM;->f$1:Ljava/lang/String;

    iput p3, p0, Lcom/android/server/pm/-$$Lambda$PackageManagerService$QEXaCTQ54nCy5aHUAa6mkt0WtpM;->f$2:I

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget-object v0, p0, Lcom/android/server/pm/-$$Lambda$PackageManagerService$QEXaCTQ54nCy5aHUAa6mkt0WtpM;->f$0:Lcom/android/server/pm/PackageManagerService;

    iget-object v1, p0, Lcom/android/server/pm/-$$Lambda$PackageManagerService$QEXaCTQ54nCy5aHUAa6mkt0WtpM;->f$1:Ljava/lang/String;

    iget v2, p0, Lcom/android/server/pm/-$$Lambda$PackageManagerService$QEXaCTQ54nCy5aHUAa6mkt0WtpM;->f$2:I

    invoke-virtual {v0, v1, v2}, Lcom/android/server/pm/PackageManagerService;->lambda$removeUnusedPackagesLPw$43$PackageManagerService(Ljava/lang/String;I)V

    return-void
.end method

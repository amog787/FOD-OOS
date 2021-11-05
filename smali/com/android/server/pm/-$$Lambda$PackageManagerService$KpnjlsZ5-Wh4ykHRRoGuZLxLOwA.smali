.class public final synthetic Lcom/android/server/pm/-$$Lambda$PackageManagerService$KpnjlsZ5-Wh4ykHRRoGuZLxLOwA;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/android/server/pm/PackageManagerService;

.field public final synthetic f$1:[I

.field public final synthetic f$2:Ljava/lang/String;

.field public final synthetic f$3:Ljava/lang/String;

.field public final synthetic f$4:Landroid/os/Bundle;

.field public final synthetic f$5:I

.field public final synthetic f$6:Ljava/lang/String;

.field public final synthetic f$7:Landroid/content/IIntentReceiver;

.field public final synthetic f$8:Landroid/util/SparseArray;

.field public final synthetic f$9:[I


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/pm/PackageManagerService;[ILjava/lang/String;Ljava/lang/String;Landroid/os/Bundle;ILjava/lang/String;Landroid/content/IIntentReceiver;Landroid/util/SparseArray;[I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/pm/-$$Lambda$PackageManagerService$KpnjlsZ5-Wh4ykHRRoGuZLxLOwA;->f$0:Lcom/android/server/pm/PackageManagerService;

    iput-object p2, p0, Lcom/android/server/pm/-$$Lambda$PackageManagerService$KpnjlsZ5-Wh4ykHRRoGuZLxLOwA;->f$1:[I

    iput-object p3, p0, Lcom/android/server/pm/-$$Lambda$PackageManagerService$KpnjlsZ5-Wh4ykHRRoGuZLxLOwA;->f$2:Ljava/lang/String;

    iput-object p4, p0, Lcom/android/server/pm/-$$Lambda$PackageManagerService$KpnjlsZ5-Wh4ykHRRoGuZLxLOwA;->f$3:Ljava/lang/String;

    iput-object p5, p0, Lcom/android/server/pm/-$$Lambda$PackageManagerService$KpnjlsZ5-Wh4ykHRRoGuZLxLOwA;->f$4:Landroid/os/Bundle;

    iput p6, p0, Lcom/android/server/pm/-$$Lambda$PackageManagerService$KpnjlsZ5-Wh4ykHRRoGuZLxLOwA;->f$5:I

    iput-object p7, p0, Lcom/android/server/pm/-$$Lambda$PackageManagerService$KpnjlsZ5-Wh4ykHRRoGuZLxLOwA;->f$6:Ljava/lang/String;

    iput-object p8, p0, Lcom/android/server/pm/-$$Lambda$PackageManagerService$KpnjlsZ5-Wh4ykHRRoGuZLxLOwA;->f$7:Landroid/content/IIntentReceiver;

    iput-object p9, p0, Lcom/android/server/pm/-$$Lambda$PackageManagerService$KpnjlsZ5-Wh4ykHRRoGuZLxLOwA;->f$8:Landroid/util/SparseArray;

    iput-object p10, p0, Lcom/android/server/pm/-$$Lambda$PackageManagerService$KpnjlsZ5-Wh4ykHRRoGuZLxLOwA;->f$9:[I

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 10

    iget-object v0, p0, Lcom/android/server/pm/-$$Lambda$PackageManagerService$KpnjlsZ5-Wh4ykHRRoGuZLxLOwA;->f$0:Lcom/android/server/pm/PackageManagerService;

    iget-object v1, p0, Lcom/android/server/pm/-$$Lambda$PackageManagerService$KpnjlsZ5-Wh4ykHRRoGuZLxLOwA;->f$1:[I

    iget-object v2, p0, Lcom/android/server/pm/-$$Lambda$PackageManagerService$KpnjlsZ5-Wh4ykHRRoGuZLxLOwA;->f$2:Ljava/lang/String;

    iget-object v3, p0, Lcom/android/server/pm/-$$Lambda$PackageManagerService$KpnjlsZ5-Wh4ykHRRoGuZLxLOwA;->f$3:Ljava/lang/String;

    iget-object v4, p0, Lcom/android/server/pm/-$$Lambda$PackageManagerService$KpnjlsZ5-Wh4ykHRRoGuZLxLOwA;->f$4:Landroid/os/Bundle;

    iget v5, p0, Lcom/android/server/pm/-$$Lambda$PackageManagerService$KpnjlsZ5-Wh4ykHRRoGuZLxLOwA;->f$5:I

    iget-object v6, p0, Lcom/android/server/pm/-$$Lambda$PackageManagerService$KpnjlsZ5-Wh4ykHRRoGuZLxLOwA;->f$6:Ljava/lang/String;

    iget-object v7, p0, Lcom/android/server/pm/-$$Lambda$PackageManagerService$KpnjlsZ5-Wh4ykHRRoGuZLxLOwA;->f$7:Landroid/content/IIntentReceiver;

    iget-object v8, p0, Lcom/android/server/pm/-$$Lambda$PackageManagerService$KpnjlsZ5-Wh4ykHRRoGuZLxLOwA;->f$8:Landroid/util/SparseArray;

    iget-object v9, p0, Lcom/android/server/pm/-$$Lambda$PackageManagerService$KpnjlsZ5-Wh4ykHRRoGuZLxLOwA;->f$9:[I

    invoke-virtual/range {v0 .. v9}, Lcom/android/server/pm/PackageManagerService;->lambda$sendPackageBroadcast$17$PackageManagerService([ILjava/lang/String;Ljava/lang/String;Landroid/os/Bundle;ILjava/lang/String;Landroid/content/IIntentReceiver;Landroid/util/SparseArray;[I)V

    return-void
.end method

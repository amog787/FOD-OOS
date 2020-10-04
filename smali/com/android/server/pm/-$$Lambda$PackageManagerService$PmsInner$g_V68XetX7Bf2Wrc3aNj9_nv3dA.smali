.class public final synthetic Lcom/android/server/pm/-$$Lambda$PackageManagerService$PmsInner$g_V68XetX7Bf2Wrc3aNj9_nv3dA;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic f$0:Lcom/android/server/pm/PackageManagerService$PmsInner;

.field private final synthetic f$1:Ljava/lang/String;

.field private final synthetic f$2:J

.field private final synthetic f$3:I

.field private final synthetic f$4:I


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/pm/PackageManagerService$PmsInner;Ljava/lang/String;JII)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/pm/-$$Lambda$PackageManagerService$PmsInner$g_V68XetX7Bf2Wrc3aNj9_nv3dA;->f$0:Lcom/android/server/pm/PackageManagerService$PmsInner;

    iput-object p2, p0, Lcom/android/server/pm/-$$Lambda$PackageManagerService$PmsInner$g_V68XetX7Bf2Wrc3aNj9_nv3dA;->f$1:Ljava/lang/String;

    iput-wide p3, p0, Lcom/android/server/pm/-$$Lambda$PackageManagerService$PmsInner$g_V68XetX7Bf2Wrc3aNj9_nv3dA;->f$2:J

    iput p5, p0, Lcom/android/server/pm/-$$Lambda$PackageManagerService$PmsInner$g_V68XetX7Bf2Wrc3aNj9_nv3dA;->f$3:I

    iput p6, p0, Lcom/android/server/pm/-$$Lambda$PackageManagerService$PmsInner$g_V68XetX7Bf2Wrc3aNj9_nv3dA;->f$4:I

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 6

    iget-object v0, p0, Lcom/android/server/pm/-$$Lambda$PackageManagerService$PmsInner$g_V68XetX7Bf2Wrc3aNj9_nv3dA;->f$0:Lcom/android/server/pm/PackageManagerService$PmsInner;

    iget-object v1, p0, Lcom/android/server/pm/-$$Lambda$PackageManagerService$PmsInner$g_V68XetX7Bf2Wrc3aNj9_nv3dA;->f$1:Ljava/lang/String;

    iget-wide v2, p0, Lcom/android/server/pm/-$$Lambda$PackageManagerService$PmsInner$g_V68XetX7Bf2Wrc3aNj9_nv3dA;->f$2:J

    iget v4, p0, Lcom/android/server/pm/-$$Lambda$PackageManagerService$PmsInner$g_V68XetX7Bf2Wrc3aNj9_nv3dA;->f$3:I

    iget v5, p0, Lcom/android/server/pm/-$$Lambda$PackageManagerService$PmsInner$g_V68XetX7Bf2Wrc3aNj9_nv3dA;->f$4:I

    invoke-virtual/range {v0 .. v5}, Lcom/android/server/pm/PackageManagerService$PmsInner;->lambda$deletePackageX$0$PackageManagerService$PmsInner(Ljava/lang/String;JII)V

    return-void
.end method

.class public final synthetic Lcom/android/server/connectivity/-$$Lambda$Vpn$01GHnWeBsEVRYvEsZRkJXx1CEVs;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Lcom/android/internal/util/FunctionalUtils$ThrowingSupplier;


# instance fields
.field public final synthetic f$0:Landroid/content/pm/PackageManager;

.field public final synthetic f$1:Ljava/lang/String;

.field public final synthetic f$2:I


# direct methods
.method public synthetic constructor <init>(Landroid/content/pm/PackageManager;Ljava/lang/String;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/connectivity/-$$Lambda$Vpn$01GHnWeBsEVRYvEsZRkJXx1CEVs;->f$0:Landroid/content/pm/PackageManager;

    iput-object p2, p0, Lcom/android/server/connectivity/-$$Lambda$Vpn$01GHnWeBsEVRYvEsZRkJXx1CEVs;->f$1:Ljava/lang/String;

    iput p3, p0, Lcom/android/server/connectivity/-$$Lambda$Vpn$01GHnWeBsEVRYvEsZRkJXx1CEVs;->f$2:I

    return-void
.end method


# virtual methods
.method public final getOrThrow()Ljava/lang/Object;
    .locals 3

    iget-object v0, p0, Lcom/android/server/connectivity/-$$Lambda$Vpn$01GHnWeBsEVRYvEsZRkJXx1CEVs;->f$0:Landroid/content/pm/PackageManager;

    iget-object v1, p0, Lcom/android/server/connectivity/-$$Lambda$Vpn$01GHnWeBsEVRYvEsZRkJXx1CEVs;->f$1:Ljava/lang/String;

    iget v2, p0, Lcom/android/server/connectivity/-$$Lambda$Vpn$01GHnWeBsEVRYvEsZRkJXx1CEVs;->f$2:I

    invoke-static {v0, v1, v2}, Lcom/android/server/connectivity/Vpn;->lambda$getAppUid$0(Landroid/content/pm/PackageManager;Ljava/lang/String;I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

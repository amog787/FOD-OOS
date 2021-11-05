.class public final synthetic Lcom/android/server/pm/-$$Lambda$AppsFilter$Dxw_XmZrEzzBQvW2GyGYmM8TilU;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Lcom/android/server/pm/AppsFilter$StateProvider$CurrentStateCallback;


# instance fields
.field public final synthetic f$0:Lcom/android/server/pm/AppsFilter;

.field public final synthetic f$1:Lcom/android/server/pm/PackageSetting;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/pm/AppsFilter;Lcom/android/server/pm/PackageSetting;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/pm/-$$Lambda$AppsFilter$Dxw_XmZrEzzBQvW2GyGYmM8TilU;->f$0:Lcom/android/server/pm/AppsFilter;

    iput-object p2, p0, Lcom/android/server/pm/-$$Lambda$AppsFilter$Dxw_XmZrEzzBQvW2GyGYmM8TilU;->f$1:Lcom/android/server/pm/PackageSetting;

    return-void
.end method


# virtual methods
.method public final currentState(Landroid/util/ArrayMap;[Landroid/content/pm/UserInfo;)V
    .locals 2

    iget-object v0, p0, Lcom/android/server/pm/-$$Lambda$AppsFilter$Dxw_XmZrEzzBQvW2GyGYmM8TilU;->f$0:Lcom/android/server/pm/AppsFilter;

    iget-object v1, p0, Lcom/android/server/pm/-$$Lambda$AppsFilter$Dxw_XmZrEzzBQvW2GyGYmM8TilU;->f$1:Lcom/android/server/pm/PackageSetting;

    invoke-virtual {v0, v1, p1, p2}, Lcom/android/server/pm/AppsFilter;->lambda$addPackage$1$AppsFilter(Lcom/android/server/pm/PackageSetting;Landroid/util/ArrayMap;[Landroid/content/pm/UserInfo;)V

    return-void
.end method

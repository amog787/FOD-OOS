.class Lcom/android/server/am/ActivityManagerShellCommand$4;
.super Ljava/lang/Object;
.source "ActivityManagerShellCommand.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/am/ActivityManagerShellCommand;->getRecentConfigurations(I)Ljava/util/List;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator<",
        "Landroid/content/res/Configuration;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/am/ActivityManagerShellCommand;

.field final synthetic val$recentConfigs:Landroid/util/ArrayMap;


# direct methods
.method constructor <init>(Lcom/android/server/am/ActivityManagerShellCommand;Landroid/util/ArrayMap;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/server/am/ActivityManagerShellCommand;

    .line 2064
    iput-object p1, p0, Lcom/android/server/am/ActivityManagerShellCommand$4;->this$0:Lcom/android/server/am/ActivityManagerShellCommand;

    iput-object p2, p0, Lcom/android/server/am/ActivityManagerShellCommand$4;->val$recentConfigs:Landroid/util/ArrayMap;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public compare(Landroid/content/res/Configuration;Landroid/content/res/Configuration;)I
    .locals 2
    .param p1, "a"    # Landroid/content/res/Configuration;
    .param p2, "b"    # Landroid/content/res/Configuration;

    .line 2067
    iget-object v0, p0, Lcom/android/server/am/ActivityManagerShellCommand$4;->val$recentConfigs:Landroid/util/ArrayMap;

    invoke-virtual {v0, p2}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    iget-object v1, p0, Lcom/android/server/am/ActivityManagerShellCommand$4;->val$recentConfigs:Landroid/util/ArrayMap;

    invoke-virtual {v1, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v0, v1}, Ljava/lang/Integer;->compareTo(Ljava/lang/Integer;)I

    move-result v0

    return v0
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 0

    .line 2064
    check-cast p1, Landroid/content/res/Configuration;

    check-cast p2, Landroid/content/res/Configuration;

    invoke-virtual {p0, p1, p2}, Lcom/android/server/am/ActivityManagerShellCommand$4;->compare(Landroid/content/res/Configuration;Landroid/content/res/Configuration;)I

    move-result p1

    return p1
.end method

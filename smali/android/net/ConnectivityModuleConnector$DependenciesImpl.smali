.class Landroid/net/ConnectivityModuleConnector$DependenciesImpl;
.super Ljava/lang/Object;
.source "ConnectivityModuleConnector.java"

# interfaces
.implements Landroid/net/ConnectivityModuleConnector$Dependencies;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/net/ConnectivityModuleConnector;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "DependenciesImpl"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 152
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Landroid/net/ConnectivityModuleConnector$1;)V
    .locals 0
    .param p1, "x0"    # Landroid/net/ConnectivityModuleConnector$1;

    .line 152
    invoke-direct {p0}, Landroid/net/ConnectivityModuleConnector$DependenciesImpl;-><init>()V

    return-void
.end method


# virtual methods
.method public getModuleServiceIntent(Landroid/content/pm/PackageManager;Ljava/lang/String;Ljava/lang/String;Z)Landroid/content/Intent;
    .locals 7
    .param p1, "pm"    # Landroid/content/pm/PackageManager;
    .param p2, "serviceIntentBaseAction"    # Ljava/lang/String;
    .param p3, "servicePermissionName"    # Ljava/lang/String;
    .param p4, "inSystemProcess"    # Z

    .line 158
    new-instance v0, Landroid/content/Intent;

    .line 159
    if-eqz p4, :cond_0

    .line 160
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ".InProcess"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 161
    :cond_0
    move-object v1, p2

    :goto_0
    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 162
    .local v0, "intent":Landroid/content/Intent;
    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Landroid/content/Intent;->resolveSystemService(Landroid/content/pm/PackageManager;I)Landroid/content/ComponentName;

    move-result-object v2

    .line 163
    .local v2, "comp":Landroid/content/ComponentName;
    if-nez v2, :cond_1

    .line 164
    const/4 v1, 0x0

    return-object v1

    .line 166
    :cond_1
    invoke-virtual {v0, v2}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 170
    :try_start_0
    invoke-virtual {v2}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3, v1}, Landroid/content/pm/PackageManager;->getPackageUidAsUser(Ljava/lang/String;I)I

    move-result v1
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 174
    .local v1, "uid":I
    nop

    .line 177
    if-eqz p4, :cond_2

    const/16 v3, 0x3e8

    goto :goto_1

    :cond_2
    const/16 v3, 0x431

    .line 178
    .local v3, "expectedUid":I
    :goto_1
    if-ne v1, v3, :cond_4

    .line 182
    if-nez p4, :cond_3

    .line 183
    invoke-static {p1, v2, p3}, Landroid/net/ConnectivityModuleConnector;->access$100(Landroid/content/pm/PackageManager;Landroid/content/ComponentName;Ljava/lang/String;)V

    .line 186
    :cond_3
    return-object v0

    .line 179
    :cond_4
    new-instance v4, Ljava/lang/SecurityException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Invalid network stack UID: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 171
    .end local v1    # "uid":I
    .end local v3    # "expectedUid":I
    :catch_0
    move-exception v1

    .line 172
    .local v1, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    new-instance v3, Ljava/lang/SecurityException;

    const-string v4, "Could not check network stack UID; package not found."

    invoke-direct {v3, v4, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v3
.end method

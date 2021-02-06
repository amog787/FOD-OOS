.class interface abstract Lcom/android/server/timezone/PackageManagerHelper;
.super Ljava/lang/Object;
.source "PackageManagerHelper.java"


# virtual methods
.method public abstract contentProviderRegistered(Ljava/lang/String;Ljava/lang/String;)Z
.end method

.method public abstract getInstalledPackageVersion(Ljava/lang/String;)J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/pm/PackageManager$NameNotFoundException;
        }
    .end annotation
.end method

.method public abstract isPrivilegedApp(Ljava/lang/String;)Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/pm/PackageManager$NameNotFoundException;
        }
    .end annotation
.end method

.method public abstract receiverRegistered(Landroid/content/Intent;Ljava/lang/String;)Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/pm/PackageManager$NameNotFoundException;
        }
    .end annotation
.end method

.method public abstract usesPermission(Ljava/lang/String;Ljava/lang/String;)Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/pm/PackageManager$NameNotFoundException;
        }
    .end annotation
.end method

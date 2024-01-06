echo "running sh file😊"
 - name: Pull Image
      run: sudo docker pull -a ${{ secrets.DOCKERHUB_USERNAME }}/clockbox
     
    - name: Deploy Image
      run: sudo docker run -dp 8080:8080 ${{ secrets.DOCKERHUB_USERNAME }}/clockbox:latest